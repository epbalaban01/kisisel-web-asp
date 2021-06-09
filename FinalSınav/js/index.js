var input = document.querySelector('.search');
var output = document.querySelector('.output');
var data = [{
	name: 'Çevrim İçi Form Oluşturma Sertifika',
	size: "476 KB",
	download: '<a href="sertifika/Çevrim_İçi_Form_Oluşturma-Sertifika.pdf" target="_blank">İndir</a>'
}, {
	name: 'Excel’de Makro Uygulamaları Sertifika',
	size: "483 KB",
	download: '<a href="sertifika/Excel’de_Makro_Uygulamaları-Sertifika.pdf" target="_blank">İndir</a>'
}, {
	name: 'Genel İş Sağlığı ve Güvenliği Sertifika',
	size: "476 KB",
	download: '<a href="sertifika/Genel_İş_Sağlığı_ve_Güvenliği_-Sertifika.pdf" target="_blank">İndir</a>'
}, {
	name: 'Google Slaytlar İle Etkili Sunum Hazırlama Sertifika',
	size: "477 KB",
	download: '<a href="sertifika/Google_Slaytlar_İle_Etkili_Sunum_Hazırlama-Sertifika.pdf" target="_blank">İndir</a>'
}, {
	name: 'İşiniz İçin Sosyal Medya Sertifika',
	size: "476 KB",
	download: '<a href="sertifika/İşiniz_İçin_Sosyal_Medya-Sertifika.pdf" target="_blank">İndir</a>'
}, {
	name: 'İşinizi İnternete Taşıyın Sertifika',
	size: "476 KB",
	download: '<a href="sertifika/İşinizi_İnternete_Taşıyın-Sertifika.pdf" target="_blank">İndir</a>'
}, {
	name: 'Microsoft Office Kullanarak Profesyonel Toplu e-Posta Gönderimi Sertifika',
	size: "483 KB",
	download: '<a href="sertifika/Microsoft_Office_Kullanarak_Profesyonel_Toplu_e_Posta_Gönderimi-Sertifika.pdf" target="_blank">İndir</a>'
}, {
	name: 'Yiyecek İçecek Servisi Sertifika',
	size: "476 KB",
	download: '<a href="sertifika/Yiyecek_İçecek_Servisi-Sertifika.pdf" target="_blank">İndir</a>'
}];

function isMatch(value, regExp) {
	value += '';
	if (value.match(regExp)) {
		return true;
	} else {
		return false;
	}
}
function draw(data, container) {
	if (data.length) {
		var outHTML = '<table><thead><td>Adı</td><td>Boyut</td><td>İndir</td></thead>';
		data.forEach(function (value, index) {
			outHTML += '<tr class="tran" style="animation-delay: ' + index / 30 + 's">\n\t\t\t\t\t\t\t\t\t\t<td>' + value.name + '</td>\n\t\t\t\t\t\t\t\t\t\t<td>' + value.size + '</td>\n\t\t\t\t\t\t\t\t\t\t<td>' + value.download + '</td>\n\t\t\t\t\t\t\t\t\t</tr>';
		});
		container.innerHTML = outHTML + '</table>';
	} else {
		container.innerHTML = '<h3 class="err tran">Üzgünüz, eşleşme bulunamadı</h3>';
	}
}
draw([].concat(data), output);
input.addEventListener('keyup', function (e) {
	var inputData = e.target.value;
	if (inputData !== '') {
		var reg = new RegExp(inputData, 'gi');
		var outar = [].concat(data).filter(function (value, index) {
			return isMatch(value.size, reg) || isMatch(value.name, reg) || isMatch(value.download, reg);
		});
		draw(outar, output);
	} else {
		draw([].concat(data), output);
	}
});