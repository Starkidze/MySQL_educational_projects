# Туда-сюда, там-сям. Что-то здесь, что-то там. Что-то с одними, что-то с другими. Кручусь-верчусь. То вверх, то вниз. Тудым-сюдым
## Физическая модель базы данных, которая разработана с учетом третьей нормальной формы.
![БД_фото](https://github.com/Starkidze/MySQL_educational_projects/assets/114806514/573c2e59-cb32-433e-8ecb-32fdee4a9d36)

## Создание базы данных и таблиц
<pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=CREATE"><span style="color: #990099; font-weight: bold;">CREATE</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=DATABASE"><span style="color: #990099; font-weight: bold;">DATABASE</span></a> my_database<span style="color: #000033;">;</span>
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=USE"><span style="color: #990099; font-weight: bold;">USE</span></a> my_database<span style="color: #000033;">;</span>
&nbsp;
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=CREATE"><span style="color: #990099; font-weight: bold;">CREATE</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=TABLE"><span style="color: #990099; font-weight: bold;">TABLE</span></a> users <span style="color: #FF00FF;">&#40;</span>
  id <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INT"><span style="color: #999900; font-weight: bold;">INT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=PRIMARY%20KEY"><span style="color: #990099; font-weight: bold;">PRIMARY KEY</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=AUTO_INCREMENT"><span style="color: #FF9900; font-weight: bold;">AUTO_INCREMENT</span></a><span style="color: #000033;">,</span>
  name <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=VARCHAR"><span style="color: #999900; font-weight: bold;">VARCHAR</span></a><span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">50</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  email <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=VARCHAR"><span style="color: #999900; font-weight: bold;">VARCHAR</span></a><span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">50</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  age <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INT"><span style="color: #999900; font-weight: bold;">INT</span></a>
<span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">;</span>
&nbsp;
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=CREATE"><span style="color: #990099; font-weight: bold;">CREATE</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=TABLE"><span style="color: #990099; font-weight: bold;">TABLE</span></a> orders <span style="color: #FF00FF;">&#40;</span>
  id <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INT"><span style="color: #999900; font-weight: bold;">INT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=PRIMARY%20KEY"><span style="color: #990099; font-weight: bold;">PRIMARY KEY</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=AUTO_INCREMENT"><span style="color: #FF9900; font-weight: bold;">AUTO_INCREMENT</span></a><span style="color: #000033;">,</span>
  user_id <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INT"><span style="color: #999900; font-weight: bold;">INT</span></a><span style="color: #000033;">,</span>
  product <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=VARCHAR"><span style="color: #999900; font-weight: bold;">VARCHAR</span></a><span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">50</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  quantity <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INT"><span style="color: #999900; font-weight: bold;">INT</span></a><span style="color: #000033;">,</span>
  price <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=DECIMAL"><span style="color: #999900; font-weight: bold;">DECIMAL</span></a><span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">10</span><span style="color: #000033;">,</span> <span style="color: #008080;">2</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FOREIGN%20KEY"><span style="color: #990099; font-weight: bold;">FOREIGN KEY</span></a> <span style="color: #FF00FF;">&#40;</span>user_id<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=REFERENCES"><span style="color: #990099; font-weight: bold;">REFERENCES</span></a> users<span style="color: #FF00FF;">&#40;</span>id<span style="color: #FF00FF;">&#41;</span>
<span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">;</span>
&nbsp;
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=CREATE"><span style="color: #990099; font-weight: bold;">CREATE</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=TABLE"><span style="color: #990099; font-weight: bold;">TABLE</span></a> products <span style="color: #FF00FF;">&#40;</span>
  id <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INT"><span style="color: #999900; font-weight: bold;">INT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=PRIMARY%20KEY"><span style="color: #990099; font-weight: bold;">PRIMARY KEY</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=AUTO_INCREMENT"><span style="color: #FF9900; font-weight: bold;">AUTO_INCREMENT</span></a><span style="color: #000033;">,</span>
  name <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=VARCHAR"><span style="color: #999900; font-weight: bold;">VARCHAR</span></a><span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">50</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  price <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=DECIMAL"><span style="color: #999900; font-weight: bold;">DECIMAL</span></a><span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">10</span><span style="color: #000033;">,</span> <span style="color: #008080;">2</span><span style="color: #FF00FF;">&#41;</span>
<span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">;</span>
&nbsp;
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=CREATE"><span style="color: #990099; font-weight: bold;">CREATE</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=TABLE"><span style="color: #990099; font-weight: bold;">TABLE</span></a> categories <span style="color: #FF00FF;">&#40;</span>
  id <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INT"><span style="color: #999900; font-weight: bold;">INT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=PRIMARY%20KEY"><span style="color: #990099; font-weight: bold;">PRIMARY KEY</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=AUTO_INCREMENT"><span style="color: #FF9900; font-weight: bold;">AUTO_INCREMENT</span></a><span style="color: #000033;">,</span>
  name <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=VARCHAR"><span style="color: #999900; font-weight: bold;">VARCHAR</span></a><span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">50</span><span style="color: #FF00FF;">&#41;</span>
<span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">;</span>
&nbsp;
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=CREATE"><span style="color: #990099; font-weight: bold;">CREATE</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=TABLE"><span style="color: #990099; font-weight: bold;">TABLE</span></a> product_categories <span style="color: #FF00FF;">&#40;</span>
  product_id <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INT"><span style="color: #999900; font-weight: bold;">INT</span></a><span style="color: #000033;">,</span>
  category_id <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INT"><span style="color: #999900; font-weight: bold;">INT</span></a><span style="color: #000033;">,</span>
  <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FOREIGN%20KEY"><span style="color: #990099; font-weight: bold;">FOREIGN KEY</span></a> <span style="color: #FF00FF;">&#40;</span>product_id<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=REFERENCES"><span style="color: #990099; font-weight: bold;">REFERENCES</span></a> products<span style="color: #FF00FF;">&#40;</span>id<span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FOREIGN%20KEY"><span style="color: #990099; font-weight: bold;">FOREIGN KEY</span></a> <span style="color: #FF00FF;">&#40;</span>category_id<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=REFERENCES"><span style="color: #990099; font-weight: bold;">REFERENCES</span></a> categories<span style="color: #FF00FF;">&#40;</span>id<span style="color: #FF00FF;">&#41;</span>
<span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">;</span></pre>

## Заполнение таблиц
<pre class="mysql" style="font-family:monospace;font-size:10px;"><span style="color: #808080; font-style: italic;">-- Заполнение таблицы &quot;users&quot;</span>
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INSERT"><span style="color: #990099; font-weight: bold;">INSERT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INTO"><span style="color: #990099; font-weight: bold;">INTO</span></a> users <span style="color: #FF00FF;">&#40;</span>name<span style="color: #000033;">,</span> email<span style="color: #000033;">,</span> age<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=VALUES"><span style="color: #990099; font-weight: bold;">VALUES</span></a>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Иван Петров'</span><span style="color: #000033;">,</span> <span style="color: #008000;">'ivan.petrov@email.com'</span><span style="color: #000033;">,</span> <span style="color: #008080;">30</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Анна Смирнова'</span><span style="color: #000033;">,</span> <span style="color: #008000;">'anna.smirnova@email.com'</span><span style="color: #000033;">,</span> <span style="color: #008080;">25</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Сергей Иванов'</span><span style="color: #000033;">,</span> <span style="color: #008000;">'sergey.ivanov@email.com'</span><span style="color: #000033;">,</span> <span style="color: #008080;">35</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Ольга Козлова'</span><span style="color: #000033;">,</span> <span style="color: #008000;">'olga.kozlova@email.com'</span><span style="color: #000033;">,</span> <span style="color: #008080;">28</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Алексей Соколов'</span><span style="color: #000033;">,</span> <span style="color: #008000;">'alexey.sokolov@email.com'</span><span style="color: #000033;">,</span> <span style="color: #008080;">22</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">;</span>
&nbsp;
<span style="color: #808080; font-style: italic;">-- Заполнение таблицы &quot;orders&quot;</span>
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INSERT"><span style="color: #990099; font-weight: bold;">INSERT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INTO"><span style="color: #990099; font-weight: bold;">INTO</span></a> orders <span style="color: #FF00FF;">&#40;</span>user_id<span style="color: #000033;">,</span> product<span style="color: #000033;">,</span> quantity<span style="color: #000033;">,</span> price<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=VALUES"><span style="color: #990099; font-weight: bold;">VALUES</span></a>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">1</span><span style="color: #000033;">,</span> <span style="color: #008000;">'Product A'</span><span style="color: #000033;">,</span> <span style="color: #008080;">3</span><span style="color: #000033;">,</span> <span style="color: #008080;">45.99</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">2</span><span style="color: #000033;">,</span> <span style="color: #008000;">'Product B'</span><span style="color: #000033;">,</span> <span style="color: #008080;">2</span><span style="color: #000033;">,</span> <span style="color: #008080;">29.99</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">3</span><span style="color: #000033;">,</span> <span style="color: #008000;">'Product A'</span><span style="color: #000033;">,</span> <span style="color: #008080;">5</span><span style="color: #000033;">,</span> <span style="color: #008080;">45.99</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">4</span><span style="color: #000033;">,</span> <span style="color: #008000;">'Product C'</span><span style="color: #000033;">,</span> <span style="color: #008080;">1</span><span style="color: #000033;">,</span> <span style="color: #008080;">19.99</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">5</span><span style="color: #000033;">,</span> <span style="color: #008000;">'Product B'</span><span style="color: #000033;">,</span> <span style="color: #008080;">4</span><span style="color: #000033;">,</span> <span style="color: #008080;">29.99</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">;</span>
&nbsp;
<span style="color: #808080; font-style: italic;">-- Заполнение таблицы &quot;products&quot;</span>
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INSERT"><span style="color: #990099; font-weight: bold;">INSERT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INTO"><span style="color: #990099; font-weight: bold;">INTO</span></a> products <span style="color: #FF00FF;">&#40;</span>name<span style="color: #000033;">,</span> price<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=VALUES"><span style="color: #990099; font-weight: bold;">VALUES</span></a>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Product A'</span><span style="color: #000033;">,</span> <span style="color: #008080;">45.99</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Product B'</span><span style="color: #000033;">,</span> <span style="color: #008080;">29.99</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Product C'</span><span style="color: #000033;">,</span> <span style="color: #008080;">19.99</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Product D'</span><span style="color: #000033;">,</span> <span style="color: #008080;">39.99</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Product E'</span><span style="color: #000033;">,</span> <span style="color: #008080;">59.99</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">;</span>
&nbsp;
<span style="color: #808080; font-style: italic;">-- Заполнение таблицы &quot;categories&quot;</span>
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INSERT"><span style="color: #990099; font-weight: bold;">INSERT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INTO"><span style="color: #990099; font-weight: bold;">INTO</span></a> categories <span style="color: #FF00FF;">&#40;</span>name<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=VALUES"><span style="color: #990099; font-weight: bold;">VALUES</span></a>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Category 1'</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Category 2'</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Category 3'</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Category 4'</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008000;">'Category 5'</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">;</span>
&nbsp;
<span style="color: #808080; font-style: italic;">-- Заполнение таблицы &quot;product_categories&quot;</span>
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INSERT"><span style="color: #990099; font-weight: bold;">INSERT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INTO"><span style="color: #990099; font-weight: bold;">INTO</span></a> product_categories <span style="color: #FF00FF;">&#40;</span>product_id<span style="color: #000033;">,</span> category_id<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=VALUES"><span style="color: #990099; font-weight: bold;">VALUES</span></a>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">1</span><span style="color: #000033;">,</span> <span style="color: #008080;">1</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">2</span><span style="color: #000033;">,</span> <span style="color: #008080;">1</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">2</span><span style="color: #000033;">,</span> <span style="color: #008080;">2</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">3</span><span style="color: #000033;">,</span> <span style="color: #008080;">1</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">,</span>
  <span style="color: #FF00FF;">&#40;</span><span style="color: #008080;">4</span><span style="color: #000033;">,</span> <span style="color: #008080;">3</span><span style="color: #FF00FF;">&#41;</span><span style="color: #000033;">;</span></pre>

  ## Запросы к таблицам
  ### Получить все имена пользователей
  <pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> name <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> users<span style="color: #000033;">;</span></pre>

  ### Получить все заказы, отсортированные по количеству
  <pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> <span style="color: #CC0099;">*</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> orders <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ORDER%20BY"><span style="color: #990099; font-weight: bold;">ORDER BY</span></a> quantity<span style="color: #000033;">;</span></pre>

  ### Получить суммарную стоимость всех заказов
<pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> <a href="http://dev.mysql.com/doc/refman/%35%2E%31/en/group-by-functions-and-modifiers.html"><span style="color: #000099;">SUM</span></a><span style="color: #FF00FF;">&#40;</span>quantity <span style="color: #CC0099;">*</span> price<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=AS"><span style="color: #990099; font-weight: bold;">AS</span></a> total_cost <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> orders<span style="color: #000033;">;</span></pre>


  ### Получить все продукты, отсортированные по цене в порядке убывания
  <pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> <span style="color: #CC0099;">*</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> products <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ORDER%20BY"><span style="color: #990099; font-weight: bold;">ORDER BY</span></a> price <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=DESC"><span style="color: #990099; font-weight: bold;">DESC</span></a><span style="color: #000033;">;</span></pre>

  ### Получить все продукты, отсутствующие в заказах
 <pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> products.<span style="color: #CC0099;">*</span>
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> products
<a href="http://dev.mysql.com/doc/refman/%35%2E%31/en/string-functions.html"><span style="color: #000099;">LEFT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=JOIN"><span style="color: #990099; font-weight: bold;">JOIN</span></a> orders <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ON"><span style="color: #990099; font-weight: bold;">ON</span></a> products.id <span style="color: #CC0099;">=</span> orders.product_id
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=WHERE"><span style="color: #990099; font-weight: bold;">WHERE</span></a> orders.id <a href="http://dev.mysql.com/doc/refman/%35%2E%31/en/non-typed-operators.html"><span style="color: #CC0099; font-weight: bold;">IS</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=NULL"><span style="color: #9900FF; font-weight: bold;">NULL</span></a><span style="color: #000033;">;</span></pre>

  ### Получить все категории, в которых есть продукты
<pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> categories.name
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> categories
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=JOIN"><span style="color: #990099; font-weight: bold;">JOIN</span></a> product_categories <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ON"><span style="color: #990099; font-weight: bold;">ON</span></a> categories.id <span style="color: #CC0099;">=</span> product_categories.category_id
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=JOIN"><span style="color: #990099; font-weight: bold;">JOIN</span></a> products <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ON"><span style="color: #990099; font-weight: bold;">ON</span></a> product_categories.product_id <span style="color: #CC0099;">=</span> products.id
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=GROUP%20BY"><span style="color: #990099; font-weight: bold;">GROUP BY</span></a> categories.name<span style="color: #000033;">;</span></pre>

  ### Получить все заказы, сделанные пользователями с именем, начинающимся на определенную букву
<pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> orders.<span style="color: #CC0099;">*</span>
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> orders
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=JOIN"><span style="color: #990099; font-weight: bold;">JOIN</span></a> users <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ON"><span style="color: #990099; font-weight: bold;">ON</span></a> orders.user_id <span style="color: #CC0099;">=</span> users.id
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=WHERE"><span style="color: #990099; font-weight: bold;">WHERE</span></a> users.name <a href="http://dev.mysql.com/doc/refman/%35%2E%31/en/non-typed-operators.html"><span style="color: #CC0099; font-weight: bold;">LIKE</span></a> <span style="color: #008000;">'А<span style="color: #008080; font-weight: bold;">%</span>'</span><span style="color: #000033;">;</span></pre>


  ### Получить все продукты, отсортированные по категориям и цене
<pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> products.name<span style="color: #000033;">,</span> categories.name<span style="color: #000033;">,</span> products.price
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> products
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=JOIN"><span style="color: #990099; font-weight: bold;">JOIN</span></a> product_categories <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ON"><span style="color: #990099; font-weight: bold;">ON</span></a> products.id <span style="color: #CC0099;">=</span> product_categories.product_id
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=JOIN"><span style="color: #990099; font-weight: bold;">JOIN</span></a> categories <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ON"><span style="color: #990099; font-weight: bold;">ON</span></a> product_categories.category_id <span style="color: #CC0099;">=</span> categories.id
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ORDER%20BY"><span style="color: #990099; font-weight: bold;">ORDER BY</span></a> categories.name<span style="color: #000033;">,</span> products.price<span style="color: #000033;">;</span></pre>

  ### Найти суммарное количество продуктов в каждой категории.
<pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> categories.name<span style="color: #000033;">,</span> <a href="http://dev.mysql.com/doc/refman/%35%2E%31/en/group-by-functions-and-modifiers.html"><span style="color: #000099;">SUM</span></a><span style="color: #FF00FF;">&#40;</span>product_categories.product_id<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=AS"><span style="color: #990099; font-weight: bold;">AS</span></a> total_products
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> categories
<a href="http://dev.mysql.com/doc/refman/%35%2E%31/en/string-functions.html"><span style="color: #000099;">LEFT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=JOIN"><span style="color: #990099; font-weight: bold;">JOIN</span></a> product_categories <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ON"><span style="color: #990099; font-weight: bold;">ON</span></a> categories.id <span style="color: #CC0099;">=</span> product_categories.category_id
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=GROUP%20BY"><span style="color: #990099; font-weight: bold;">GROUP BY</span></a> categories.name<span style="color: #000033;">;</span>

  
  ### Найти пользователя с наибольшим количеством заказов.
<pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> users.id<span style="color: #000033;">,</span> users.name<span style="color: #000033;">,</span> <a href="http://dev.mysql.com/doc/refman/%35%2E%31/en/group-by-functions-and-modifiers.html"><span style="color: #000099;">COUNT</span></a><span style="color: #FF00FF;">&#40;</span>orders.id<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=AS"><span style="color: #990099; font-weight: bold;">AS</span></a> order_count
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> users
<a href="http://dev.mysql.com/doc/refman/%35%2E%31/en/string-functions.html"><span style="color: #000099;">LEFT</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=JOIN"><span style="color: #990099; font-weight: bold;">JOIN</span></a> orders <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ON"><span style="color: #990099; font-weight: bold;">ON</span></a> users.id <span style="color: #CC0099;">=</span> orders.user_id
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=GROUP%20BY"><span style="color: #990099; font-weight: bold;">GROUP BY</span></a> users.id<span style="color: #000033;">,</span> users.name
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ORDER%20BY"><span style="color: #990099; font-weight: bold;">ORDER BY</span></a> order_count <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=DESC"><span style="color: #990099; font-weight: bold;">DESC</span></a>
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=LIMIT"><span style="color: #990099; font-weight: bold;">LIMIT</span></a> <span style="color: #008080;">1</span><span style="color: #000033;">;</span>

  ### Найти самый дорогой заказ.
<pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> orders.id<span style="color: #000033;">,</span> orders.user_id<span style="color: #000033;">,</span> users.name<span style="color: #000033;">,</span> <a href="http://dev.mysql.com/doc/refman/%35%2E%31/en/group-by-functions-and-modifiers.html"><span style="color: #000099;">MAX</span></a><span style="color: #FF00FF;">&#40;</span>orders.price <span style="color: #CC0099;">*</span> orders.quantity<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=AS"><span style="color: #990099; font-weight: bold;">AS</span></a> max_order_price
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> orders
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INNER"><span style="color: #990099; font-weight: bold;">INNER</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=JOIN"><span style="color: #990099; font-weight: bold;">JOIN</span></a> users <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ON"><span style="color: #990099; font-weight: bold;">ON</span></a> users.id <span style="color: #CC0099;">=</span> orders.user_id<span style="color: #000033;">;</span></pre>

  ### Получить список продуктов и количество заказов, в которых они были куплены, для конкретного пользователя.
<pre class="mysql" style="font-family:monospace;font-size:10px;"><a href="http://search.oracle.com/search/search?group=MySQL&amp;q=SELECT"><span style="color: #990099; font-weight: bold;">SELECT</span></a> users.name<span style="color: #000033;">,</span> orders.product<span style="color: #000033;">,</span> <a href="http://dev.mysql.com/doc/refman/%35%2E%31/en/group-by-functions-and-modifiers.html"><span style="color: #000099;">COUNT</span></a><span style="color: #FF00FF;">&#40;</span>orders.id<span style="color: #FF00FF;">&#41;</span> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=AS"><span style="color: #990099; font-weight: bold;">AS</span></a> order_count
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=FROM"><span style="color: #990099; font-weight: bold;">FROM</span></a> orders
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=INNER"><span style="color: #990099; font-weight: bold;">INNER</span></a> <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=JOIN"><span style="color: #990099; font-weight: bold;">JOIN</span></a> users <a href="http://search.oracle.com/search/search?group=MySQL&amp;q=ON"><span style="color: #990099; font-weight: bold;">ON</span></a> users.id <span style="color: #CC0099;">=</span> orders.user_id
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=WHERE"><span style="color: #990099; font-weight: bold;">WHERE</span></a> users.id <span style="color: #CC0099;">=</span> <span style="color: #008080;">1</span>
<a href="http://search.oracle.com/search/search?group=MySQL&amp;q=GROUP%20BY"><span style="color: #990099; font-weight: bold;">GROUP BY</span></a> users.name<span style="color: #000033;">,</span> orders.product<span style="color: #000033;">;</span></pre>

