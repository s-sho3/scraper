# -*- encoding: utf-8 -*-

require 'rubygems'
require 'mechanize'
require 'kconv'

ISBN = "4344019628" #test data
agent = Mechanize.new
#agent.get('http://www.ndl.go.jp/')
#agent.get('https://ndlopac.ndl.go.jp/')
agent.get('http://www.honyaclub.com/shop/default.aspx')
agent.page.form_with(:name => 'frmSearch'){|form|
  form['keyw'] = ISBN
  form.click_button
}

agent.page.form_with(:action => '/shop/cart/cart.aspx'){|form|
  puts form.form_node.value
  puts form.field_with(:class => 'hit').value
#  form.click_button
}
=begin
<form method="GET" action="">
	<div class="section result-block01">
		
			<p class="result-stats">
				<span class="hit">1</span> 件の商品がみつかりました
			</p>
		



<dl class="result-sort">
<dt>表示の並び替え</dt>
<dd><ul><li><a href="/shop/goods/search.aspx?sort=n&amp;search=x&amp;image.y=12&amp;image.x=30&amp;keyw=4344019628#g_list">商品名</a> </li><li><a href="/shop/goods/search.aspx?sort=lp&amp;search=x&amp;image.y=12&amp;image.x=30&amp;keyw=4344019628#g_list">価格の安い順</a> </li><li><a href="/shop/goods/search.aspx?sort=hp&amp;search=x&amp;image.y=12&amp;image.x=30&amp;keyw=4344019628#g_list">価格の高い順</a> </li><li><a href="/shop/goods/search.aspx?sort=lrd&amp;search=x&amp;image.y=12&amp;image.x=30&amp;keyw=4344019628#g_list">発売日昇順</a> </li><li><a href="/shop/goods/search.aspx?sort=hrd&amp;search=x&amp;image.y=12&amp;image.x=30&amp;keyw=4344019628#g_list">発売日降順</a> </li><li><a href="/shop/goods/search.aspx?sort=s&amp;search=x&amp;image.y=12&amp;image.x=30&amp;keyw=4344019628#g_list">売れている順</a> </li><li><a href="/shop/goods/search.aspx?sort=hrc&amp;search=x&amp;image.y=12&amp;image.x=30&amp;keyw=4344019628#g_list">レビューが多い順</a> </li><li><a href="/shop/goods/search.aspx?sort=hra&amp;search=x&amp;image.y=12&amp;image.x=30&amp;keyw=4344019628#g_list">レビューの平均点が高い順</a> </li><li>キーワードに関連する順 </li></ul></dd>
</dl>
		


		
			<div class="result-check-header">
				<p><input type="image" alt="チェックした商品をまとめてかごに入れる" src="/img/usr/com_bt01.gif"></p>
			</div>
		
		
			<div class="result-item">
				<div class="result-item-inner">
	<div class="item-block04">
		
			
		
		<div class="item-img">
			<p>
				
					
						<a href="/shop/g/g12804373/"><img alt="心を整える。" src="/img/goods/book/S/34/401/962.jpg" width="80"></a>
							
					
				
			</p>
			
		</div>
		<dl class="item-txt">
			<dt>
				<a href="/shop/g/g12804373/">心を整える。</a>
				
			</dt>
			<dd>
				
					<p class="item-info">
						
							勝利をたぐり寄せるための５６の習慣
							
						
						
						
					</p>
					
						<p>
							<a href="/shop/goods/search.aspx?search.x=true&amp;cat_p=00&amp;aut_n=%92%b7%92J%95%94%90%bd%81i%83T%83b%83J%81%5b%91I%8e%e8%81j">長谷部誠（サッカー選手）</a>　
							
							
							
						</p>
					


					
						<p class="item-release">
							幻冬舎　
							(Ｂ６)
							<br>
							【2011年03月発売】　
							ISBNコード 9784344019621　
						</p>
					
				
				<p class="item-price">
					
						価格：1,365円（本体：1,300円＋税）
					
				</p>

				
					<p class="item-release">
						在庫状況：在庫あります（通常1～2日で出荷）
					</p>
				
				<p class="bt-spacing">
				<nobr>
				
					<a href="/shop/cart/cart.aspx?goods=12804373" title="買い物かごに入れる"><img alt="買い物かごに入れる" src="/img/sys/button/carts.gif" width="176" height="25"></a>
				
				
					<a href="/shop/customer/bookmark.aspx?goods=12804373"><img alt="欲しいものリストに追加する" src="/img/product/detail_book_bt03s.gif"></a>
					
				</nobr>
				</p>
			</dd>
		</dl>
		
			<p class="item-check">
				
				<input type="checkbox" name="goods" value="12804373">
				
			</p>
		
	</div>
</div>


			</div>
			
				<div class="result-check-footer">
					<p><input type="image" alt="チェックした商品をまとめてかごに入れる" src="/img/usr/com_bt02.gif"></p>
				</div>
			
		

		

	</div>
</form>
#https://ndlopac.ndl.go.jp/F/英数ハイフン?func=find-b-0
https://ndlopac.ndl.go.jp/F/    ?func=find-a-0&local_base=gu_ss

#agent.page.link_with(:text => "オブジェクト指向スクリプト言語 Ruby".toutf8).click
puts agent.page.uri
#puts agent.page.at('div#logo/img')['alt']
=end