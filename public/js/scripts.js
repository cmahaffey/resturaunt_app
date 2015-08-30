// $('h3').data('start_time') or something
$(function(){
  //
  setInterval(function(){
    for (var i = 0; i < $(".food-prep").length; i++) {
      if ((((Date.now()-Date.parse($(".food-prep").eq(i).data('start-time'))))/60000)<3){
        $(".food-prep").eq(i).css("background-color","lightgreen")
      }else if ((((Date.now()-Date.parse($(".food-prep").eq(i).data('start-time'))))/60000)<10) {
        $(".food-prep").eq(i).css("background-color","orange")
      }else {
        $(".food-prep").eq(i).css("background-color","red")
      }
    }
  },1000)




});
