require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do #Los nombres de metodo son los que queramos. En español incluso
    #Revisar siempre las rutas para asegurarse que esté todo en orden
    #Revisar el panel de network del inspector del navegador
    get articles_url
    assert_response :success
    assert_equal 200, response.status #Este es el status http de que todo está okay. Estamos preguntando por codigo http 200
    assert_equal "text/html", response.media_type #Preguntamos si está trayendo correctamente el formato html
    assert_equal "utf-8", response.charset #Preguntar por si el sistema de caracteres es utf-8
    assert_equal Article.count, 4 #Preguntar por la cantidad de posts, esto está definido en fixtures

    #rails db:migrate RAILS_ENV=test
    # rails t test/controllers/posts_controller_test.rb -n test_should_get_index
  end

  test "should get show" do
    get article_url(articles(:one)) #Hacemos referencia al post que tenemos en las fixtures
    assert_response :success
    assert_equal 200, response.status #Este es el status http de que todo está okay. Estamos preguntando por codigo http 200
    assert_equal "text/html", response.media_type #Preguntamos si está trayendo correctamente el formato html
    assert_equal "utf-8", response.charset #Preguntar por si el sistema de caracteres es utf-8
  end

  def setup #El setup para el post de abajo. Puede usarse para más metodos luego
    @article = Article.create(title: "Otro post", description: "Este post no fue creado en las fixtures lo estamos creando ahora hehe.")
  end

  test "should get show with setup" do #Otro metodo show
    get article_url(@article) #Hace referencia al post creado en el metodo de arriba. Solo a el no a su conjunto
    assert_response :success
    assert_equal 200, response.status
    assert_equal "text/html", response.media_type
    assert_equal "utf-8", response.charset
  end

  test "should get new" do
    get new_article_url
    assert_response :success
    assert_equal 200, response.status
    assert_equal "text/html", response.media_type
    assert_equal "utf-8", response.charset
  end

  test "should get edit" do
    get edit_article_url(articles(:one)) #Precarga de formulario para cumplir con la ruta
    assert_response :success
    assert_equal 200, response.status
    assert_equal "text/html", response.media_type
    assert_equal "utf-8", response.charset
  end

  test "should create a post" do
    assert_difference "Article.count", 1 do
      post articles_url, params: {
        article: {
          title: "Another Post",
          description: "Another Post Description"
        }
      }
    end
  
    new_article = Article.last
    assert_redirected_to article_url(new_article.id)
    assert_response :found
    assert_equal 302, response.status
    assert_equal "text/html", response.media_type
    assert_equal "utf-8", response.charset
  end
  

  #Update, igual que el create
  test "should update a post" do
    patch article_url(articles(:one)), params: #metodo http patch
    { article:{
      title: "Updated Post",
      description: "Updated Post Description"
    }}
    articles(:one).reload
    assert_redirected_to article_url(articles(:one))
    assert_response :found
    assert_equal "Updated Post", articles(:one).title
    assert_equal "Updated Post Description", articles(:one).description
    assert_equal 302, response.status
    assert_equal "text/html", response.media_type
    assert_equal "utf-8", response.charset
  end

  test "should destroy a post" do
      assert_difference "Article.count", -1 do
      delete article_url(articles(:one))
    end
    assert_redirected_to articles_url
    assert_response :found
    assert_equal 302, response.status
    assert_equal "text/html", response.media_type
    assert_equal "utf-8", response.charset
  end
end
