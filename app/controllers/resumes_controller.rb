class  ResumesController < ApplicationController
  def index
    # render(html: "hello")
    # render(file: "檔案路徑")
    # 如果 action 有指定渲染的檔案，會優先渲染該檔案
    # 如果沒有指定，則是按照 controller 對應的檔案進行渲染(index.html.erb)
    # 所以如果沒有 action ，還是會去渲染 index.html.erb
  end

  def new
  end
end