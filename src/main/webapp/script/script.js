$(document).ready(function () {
    $("a[rel=myModal]").click(function (e) {
        e.preventDefault();
        let id = ".myModal";

        let alturaTela = $(document).height();
        let larguraTela = $(window).width();

        $(".mascara").css({'width': larguraTela, 'height': alturaTela});
        $(".mascara").fadeIn(1000);
        $(".mascara").fadeTo("slow", 0.8);

        let left = (($(window).width()/2)-($(id).width()/2));
        let top = (($(window).height()/2)-($(id).height()/2));

        $(id).css({'top': top, 'left': left});

        href=$(this).attr("href");
        $(id).load(href);

        $(id).show();
    });

    $("mascara").click(function (e) {
        $(this).hide();
        $(".windon").hide();
    });
});