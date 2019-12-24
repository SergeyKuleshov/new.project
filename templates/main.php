<!---->
<!--    <section class="promo-wrapper">-->
<!---->
<!--        -->

        <section class="promo">
            <h2 class="promo__title">Попьем пивка?</h2>
            <p class="promo__text">На этом сайте ты сможешь посмотреть разные сорта бельгийского пива, а также посмотреть ближайшие события</p>
            <ul class="promo__list">
                <!--заполните этот список из массива категорий-->

                <?php foreach ($style as $value): ?>

                    <li class="promo__item promo__item--boards">
                        <a class="promo__link" href="pages/all-lots.html"><?= $value; ?></a>
                    </li>

                <?php endforeach; ?>

            </ul>
        </section>



<!--        <section class="back">-->
<!--            <img src="../img/background_2.png" alt="">-->
<!--        </section>-->
<!---->
<!--    </section>-->
fdfdf



    <section class="lots">
        <div class="lots__header">
            <h2>Открытые лоты</h2>
        </div>
        <ul class="lots__list">
            <!--заполните этот список из массива с товарами-->


            <?php foreach ($beer as $key => $value): ?>

                <li class="lots__item lot">
                    <div class="lot__image">
                        <img src="<?= $value['url_picture']; ?> " width="350" height="260" alt="">
                    </div>
                    <div class="lot__info">
                        <span class="lot__category"><?= $value["style"]; ?></span>
                        <h3 class="lot__title"><a class="text-link" href="pages/lot.html"><?= $value["title"]; ?></a></h3>
                        <div class="lot__state">
                            <div class="lot__rate">
                                 <span class="lot__amount">Стартовая цена</span>
                                <span class="lot__cost"> <?= formatting_number($value["price"]); ?></span>
                            </div>
                            <div class="lot__timer timer">
                                12:23
                            </div>
                        </div>
                    </div>
                </li>

            <?php endforeach; ?>
        </ul>
    </section>
