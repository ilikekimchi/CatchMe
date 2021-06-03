$(function() {
		$('.location-info').click(function() {

			$('.location-list').toggleClass('click');

			if ($('.location-list').is('.click') === true) {

				$('#location-btn').removeClass('down');
				$('#location-btn').addClass('up');

			} else {

				$('#location-btn').removeClass('up');
				$('#location-btn').addClass('down');

			}
		})

		$('.gender-info').click(function() {

			$('.gender-list').toggleClass('click');

			if ($('.gender-list').is('.click') === true) {

				$('#gender-btn').removeClass('down');
				$('#gender-btn').addClass('up');

			} else {

				$('#gender-btn').removeClass('up');
				$('#gender-btn').addClass('down');

			}
		})

		$('.career-info').click(function() {

			$('.career-list').toggleClass('click');

			if ($('.career-list').is('.click') === true) {

				$('#career-btn').removeClass('down');
				$('#career-btn').addClass('up');

			} else {

				$('#career-btn').removeClass('up');
				$('#career-btn').addClass('down');

			}
		})

		$('#filter-btn').click(function() {

			if ($('#filter-btn > span').is('.block') === true) {

				$('#filter-btn > span').removeClass('block');
				$('#filter-btn > span').addClass('none');

				$('#filter').css('width', '0');

			} else {

				$('#filter-btn > span').removeClass('none');
				$('#filter-btn > span').addClass('block');

				$('#filter').css('width', '220px');
			}
		})

	})