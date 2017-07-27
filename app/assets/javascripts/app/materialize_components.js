$(document).ready(function(){
  var slider = document.getElementById('test-slider');
    noUiSlider.create(slider, {
     start: [1, 6],
     connect: true,
     step: 1,
     orientation: 'horizontal', // 'horizontal' or 'vertical'
     range: {
       'min': 1,
       'max': 10
     },

     pips: {
		mode: 'values',
		values: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
		density: 4
    },

     format: wNumb({
       decimals: 0
     })
    });
})
