let basket = {
    totalCount: 0,
    totalPrice: 0,
    //체크한 장바구니 상품 비우기
    delCheckedItem: function () {
        
        this.reCalc();
        this.updateUI();

        if($(".username").val() != ""){
            for(let i = 0; i < $("input[name=buy]:checked").length; i++){
                document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
                    let username = $(".username").val();
                    let item_id = $("input[name=buy]:checked").val();
                    
                    $.ajax({
                    	type: "GET",
                    	url: "/cartDelCh/" + username + "/" + item_id,
                    	cashe: false,
			            contentType:'application/json; charset=utf-8', //MIME 타입
						data : {username, item_id},
						success: function(result) {
							console.log(result);
						},
			            error: function (e) {
			                console.log(e);
			            }
                    });
                    item.parentElement.parentElement.parentElement.remove();
                });
            };
            $("#check_box").trigger("click");
            $("#check_box").trigger("click");
        }
        else{
            sessionStorage.removeItem("bookId"+$("input[name=buy]:checked").val());
            document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
                console.log($("input[name=buy]:checked").val());
                sessionStorage.removeItem("bookId"+$("input[name=buy]:checked").val());
                item.parentElement.parentElement.parentElement.remove();
            });
            $("#check_box").trigger("click");
            $("#check_box").trigger("click");
        }
    },
    //장바구니 전체 비우기
    delAllItem: function () {
        document.querySelectorAll('.data').forEach(function (item) {
            item.remove();
        });

        this.totalCount = 0;
        this.totalPrice = 0;
        this.reCalc();
        this.updateUI();

        if($(".username").val() != ""){
        	let username = $(".username").val();
        	
            $.ajax({
            	type: "GET",
            	url: "/cartDelAll/" + username,
            	cashe: false,
	            contentType:'application/json; charset=utf-8', //MIME 타입
				data : username,
				success: function(result) {
					console.log(result);
				},
	            error: function (e) {
	                console.log(e);
	            }
            });
            
        }
        else{
            sessionStorage.clear();
        }
        
        
    },
    //재계산
    reCalc: function () {
        this.totalCount = 0;
        this.totalPrice = 2500;
        document.querySelectorAll(".p_num").forEach(function (item) {
            if (item.parentElement.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.checked == true) {
                var count = parseInt(item.getAttribute('value'));
                this.totalCount += count;
                var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
                this.totalPrice += count * price;
            }
        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
    },
    //화면 업데이트
    updateUI: function () {
        document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';
        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';
    },
    //개별 수량 변경
    changePNum: function (pos) {
        var item = document.querySelector('input[name=p_num' + pos + ']');
        var p_num = parseInt(item.getAttribute('value'));
        var newval = event.target.classList.contains('up') ? p_num + 1 : event.target.classList.contains('down') ? p_num - 1 : event.target.value;

        if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

        item.setAttribute('value', newval);
        item.value = newval;

        var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
        item.parentElement.parentElement.nextElementSibling.textContent = (newval * price).formatNumber();
        //AJAX 업데이트 전송
        
        if($(".username").val() != ""){
        	let username = $(".username").val();
            let item_id = $("#check_box"+pos).val();
            let amount = newval;
            let form = {
            		username : username,
            		item_id : item_id,
            		amount : amount
            };
            
            $.ajax({
            	type: "PUT",
            	url: "/updateAmount",
        		cashe: false,
                contentType:'application/json; charset=utf-8', //MIME 타입
    			data : JSON.stringify(form),
    			success: function(result) {
    				console.log(result);
    			},
                error: function (e) {
                    console.log(e);
                }
            });
        }

        //전송 처리 결과가 성공이면    
        this.reCalc();
        this.updateUI();
    },
    checkItem: function () {
        this.reCalc();
        this.updateUI();
    },
    delItem: function () {
        event.target.parentElement.parentElement.parentElement.remove();
        this.reCalc();
        this.updateUI();
    },
    checkAll: function (selectAll) {
        const checkboxes = document.getElementsByName('buy');

        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAll.checked;
        })
        this.reCalc();
        this.updateUI();
    }
}

// 숫자 3자리 콤마찍기
Number.prototype.formatNumber = function () {
    if (this == 0) return 0;
    let regex = /(^[+-]?\d+)(\d{3})/;
    let nstr = (this + '');
    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
    return nstr;
};

$(document).ready(function(){
	if($(".username").val() != ""){
		let username = $(".username").val();
		
		$.ajax({
			type: "GET",
			url: "/getCartList/" + username,
			cashe: false,
            contentType:'application/json; charset=utf-8', //MIME 타입
			data : username,
			success: function(result) {       
				console.log(result);
				
				for(let i = 0; i < result.length; i++){

					$("#left_block").append(`
							<div class="d-flex justify-content-between align-items-center data flex-nowrap">
							    <div class="subdiv d-flex flex-wrap">
							        <div class="checks etrans check">
							            <input type="checkbox" id="check_box${i+1}" class="all_check" name="buy" value="${result[i].id}" checked="" onclick="javascript:basket.checkItem();">
							            <label for="check_box${i+1}" class="check_box"></label>
							        </div>
							        <div><a href="/product_detail.html/123?id=${result[i].id}"><img src="${result[i].thumbnail}" class="img" width="150px" height="200px"></a></div>
							        <div class="pname" style="padding: 15px;">
							            <span id="local_title" class="fs-4">${result[i].title}</span><br>
							            ${result[i].price.toLocaleString()}<span>원</span>
							        </div>
							    </div>
							    <div class="subdiv d-flex price_area">
							        <div class="basketprice"><input type="hidden" name="p_price${i+1}" id="p_price${i+1}" class="p_price"
							                value="${result[i].price}"></div>
							        <div class="num">
							            <div class="updown d-flex">
							            
											<div class="up" onclick="javascript:basket.changePNum(${i+1});">+</div> 
							                <input type="text" name="p_num${i+1}" id="p_num${i+1}" size="2" maxlength="4" class="p_num" value="${result[i].amount}"
							                    onkeyup="javascript:basket.changePNum(${i+1});">                         
							    
							                <div class="down" onclick="javascript:basket.changePNum(${i+1});">-</i></div>
							                
							            </div>
							        </div>
							        <div class="sum" id="sumPrice">${result[i].price * result[i].amount}</div><span class="sum2">원</span>
							    </div>
							</div>
							<input type="hidden" class="sumPriceHidden" value="${result[i].price * result[i].amount}">
							<input type="hidden" class="sumCountHidden" value="${result[i].amount}">
						`)
						
					    let sumAll = 0;

					    $('.sumCountHidden').each(function(){
					        if(!isNaN($(this).val())){
					            sumAll += parseInt($(this).val());
					        }
					    });

					    $(".sumCountText").text(sumAll);
					    
					    let sumAll2 = 0;

					    $('.sumPriceHidden').each(function(){
					        if(!isNaN($(this).val())){
					            sumAll2 += parseInt($(this).val());
					        }
					        
					    });

					    $(".sumPriceText").text((sumAll2+2500).toLocaleString());

				};
				              
            },
            error: function (e) {
                console.log(e);
            }
		});
	}
	else{
		console.log(sessionStorage.getItem("bookId112"));
		if(window.sessionStorage != null){
			for(let i = 0; i < window.sessionStorage.length; i++){
				let key = window.sessionStorage.key(i);
				
				if(key.includes("bookId")){
					let item_id = window.sessionStorage.getItem(key);
					
					$.ajax({
						type: "GET",
						url: "/getCartListSS/" + item_id,
						cashe: false,
			            contentType:'application/json; charset=utf-8', //MIME 타입
						data : item_id,
						success: function(result) {       
							console.log(result);
	
							$("#left_block").append(`
									<div class="d-flex justify-content-between align-items-center data flex-nowrap">
									    <div class="subdiv d-flex flex-wrap">
									        <div class="checks etrans check">
									            <input type="checkbox" id="check_box${i+1}" class="all_check" name="buy" value="${result.id}" checked="" onclick="javascript:basket.checkItem();">
									            <label for="check_box${i+1}" class="check_box"></label>
									        </div>
									        <div><a href="/product_detail.html/123?id=${result.id}"><img src="${result.thumbnail}" class="img" width="150px" height="200px"></a></div>
									        <div class="pname" style="padding: 15px;">
									            <span id="local_title" class="fs-4">${result.title}</span><br>
									            ${result.price.toLocaleString()}<span>원</span>
									        </div>
									    </div>
									    <div class="subdiv d-flex price_area row">
									        <div class="basketprice"><input type="hidden" name="p_price${i+1}" id="p_price${i+1}" class="p_price"
									                value="${result.price}"></div>
									        <div class="num">
									            <div class="updown d-flex">
									            
													<div class="up" onclick="javascript:basket.changePNum(${i+1});">+</i></div> 
									                <input type="text" name="p_num${i+1}" id="p_num${i+1}" size="2" maxlength="4" class="p_num" value="1"
									                    onkeyup="javascript:basket.changePNum(${i+1});">                         
									    
									                <div class="down" onclick="javascript:basket.changePNum(${i+1});">-</i></div>
									                
									            </div>
									        </div>
									        <div class="sum" id="sumPrice">${result.price}</div><span class="sum2">원</span>
									    </div>
									</div>
									<input type="hidden" class="sumPriceHidden" value="${result.price}">
									<input type="hidden" class="sumCountHidden" value="1">
								`)
								
							    let sumAll = 0;
	
							    $('.sumCountHidden').each(function(){
							        if(!isNaN($(this).val())){
							            sumAll += parseInt($(this).val());
							        }
							    });
	
							    $(".sumCountText").text(sumAll);
							    
							    let sumAll2 = 0;
	
							    $('.sumPriceHidden').each(function(){
							        if(!isNaN($(this).val())){
							            sumAll2 += parseInt($(this).val());
							        }
							    });
	
							    $(".sumPriceText").text((sumAll2+2500).toLocaleString());
	
							              
			            },
			            error: function (e) {
			                console.log(e);
			            }
					});
				}
			}
		}
	}
	
	
	$("#orderform").submit(function(event) {
        //prevendDefault()는 href로 연결해 주지 않고 
        //단순히 click에 대한 처리를 하도록 해준다.
        event.preventDefault();

        let item_id_list = [];
        
        document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
        	item_id_list.push(item.value);
        });

        let form={
        		item_id_list:item_id_list
             };
        
        $.ajax({
            type : "POST",
            url : "/orderFromCart",
            cashe:false,
            contentType:'application/json; charset=utf-8', //MIME 타입
            data: JSON.stringify(form), 
            success: function (result) {       
				console.log(result.item_id_list);
				
				let orderList = "";
				
				for(let i = 0; i < result.item_id_list.length; i++){
					orderList += (result.item_id_list[i] + "/");
				}
				
				$(location).attr('href', '/store/pay?orderList=' + orderList);              
            },
            error: function (e) {
                console.log(e);
            }
        });
        
        
     });
});




