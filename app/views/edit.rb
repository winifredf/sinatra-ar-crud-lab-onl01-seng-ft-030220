<h2><%= @articles.title %></h2><br>
<h2><%= @articles.content %></h2><br>

<form methods="POST" action="/articles/<%= @articles.id %">
  <input id="hidden" type="hidden" name="_method" value="DELETE">
  <input type="submit" value="delete">
</form>