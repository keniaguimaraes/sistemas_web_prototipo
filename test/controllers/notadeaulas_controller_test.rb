require 'test_helper'

class NotadeaulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notadeaula = notadeaulas(:one)
  end

  test "should get index" do
    get notadeaulas_url
    assert_response :success
  end

  test "should get new" do
    get new_notadeaula_url
    assert_response :success
  end

  test "should create notadeaula" do
    assert_difference('Notadeaula.count') do
      post notadeaulas_url, params: { notadeaula: { autor: @notadeaula.autor, disciplina_id: @notadeaula.disciplina_id, semestre_id: @notadeaula.semestre_id, texto: @notadeaula.texto, titulo: @notadeaula.titulo } }
    end

    assert_redirected_to notadeaula_url(Notadeaula.last)
  end

  test "should show notadeaula" do
    get notadeaula_url(@notadeaula)
    assert_response :success
  end

  test "should get edit" do
    get edit_notadeaula_url(@notadeaula)
    assert_response :success
  end

  test "should update notadeaula" do
    patch notadeaula_url(@notadeaula), params: { notadeaula: { autor: @notadeaula.autor, disciplina_id: @notadeaula.disciplina_id, semestre_id: @notadeaula.semestre_id, texto: @notadeaula.texto, titulo: @notadeaula.titulo } }
    assert_redirected_to notadeaula_url(@notadeaula)
  end

  test "should destroy notadeaula" do
    assert_difference('Notadeaula.count', -1) do
      delete notadeaula_url(@notadeaula)
    end

    assert_redirected_to notadeaulas_url
  end
end
