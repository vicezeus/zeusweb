var main = {
  init: function () {
    var _this = this;
    $("#btn-save").on("click", function () {
      _this.save();
    });
  },

  save: function () {
    alert("Hello World v2");
  },
};

main.init();
