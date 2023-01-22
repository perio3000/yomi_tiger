window.Kakao.init("9ef1e3431dfe7d19f34b5ea4bc7e8527");

function kakaoLogin(){
	window.Kakao.Auth.login({
		scope: 'profile_nickname, account_email',
		success: function(authObj){
			console.log(authObj);
			
			window.Kakao.API.request({
				url: '/v2/user/me',
				success: res => {
					const kakao_account = res.kakao_account;
					console.log(kakao_account);
				}
			});
		}
	});
}