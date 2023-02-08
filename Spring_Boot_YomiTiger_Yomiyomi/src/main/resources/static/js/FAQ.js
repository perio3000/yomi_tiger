$(document).ready(function (){

    // $(".qnaMenu").click(function (){
    //     let category = 22;
    //
    //    $.ajax({
    //        type: "GET",
    //        url: "/FAQ/" + category,
    //        cashe : false,
    //        contentType : 'application/json; charset=utf-8', //MIME 타입
    //        data : category,
    //        dataType : "json",
    //        success : function(result) {
    //            console.log(result);
    //
    //            $(".accordion-item").remove();
    //
    //            for(let i = 0; i < result.length; i++){
    //                $(".accordion").append(`
    //                     <div class="accordion-item">
    //                     <h2 class="accordion-header" id="heading${result[i].id}">
    //                     <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${result[i].id}" aria-expanded="true" aria-controls="collapse${result[i].id}">
    //                     질문 ${result[i].title}
    //                     </button>
    //                     </h2>
    //                     <div id="collapse${result[i].id}" class="accordion-collapse collapse" aria-labelledby="heading${result[i].id}" data-bs-parent="#accordionExample">
    //                     <div class="accordion-body">
    //                     답변 ${result[i].content}
    //                     </div>
    //                     </div>
    //                     </div>
    //                `);
    //            }
    //        }
    //    });
    //
    // });

});

function qnaMenu(num){
    let category = num;

    $.ajax({
        type: "GET",
        url: "/FAQ/" + category,
        cashe : false,
        contentType : 'application/json; charset=utf-8', //MIME 타입
        data : category,
        dataType : "json",
        success : function(result) {
            console.log(result);

            $(".accordion-item").remove();

            for(let i = 0; i < result.length; i++){
                $(".accordion").append(`
                        <div class="accordion-item">
                        <h2 class="accordion-header" id="heading${result[i].id}">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${result[i].id}" aria-expanded="true" aria-controls="collapse${result[i].id}">
                        질문 ${result[i].title}
                        </button>
                        </h2>
                        <div id="collapse${result[i].id}" class="accordion-collapse collapse" aria-labelledby="heading${result[i].id}" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                        답변 ${result[i].content}
                        </div>
                        </div>
                        </div>
                   `);
            }
        }
    });
}