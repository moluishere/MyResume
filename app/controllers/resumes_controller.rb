class  ResumesController < ApplicationController
  before_action :find_resume, only:[:show, :edit, :update, :destroy]
  # before_action :find_resume, except:[:index, :new, :creste]
  def index
    @resumes = Resume.all
    # render(html: "hello")
    # render(file: "檔案路徑")
    # 如果 action 有指定渲染的檔案，會優先渲染該檔案
    # 如果沒有指定，則是按照 controller 對應的檔案進行渲染(index.html.erb)
    # 所以如果沒有 action ，還是會去渲染 index.html.erb
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)

    if @resume.save
      redirect_to resumes_path, notice: "新增成功"
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @resume.destroy
    redirect_to resumes_path, notice:"已刪除"
  end

  def edit
  end

  def update
    if @resume.update(resume_params)
      redirect_to resumes_path, notice: "更新成功"
    else
      render :edit
    end
  end 

  private
  def resume_params
    params.require(:resume).permit(:title, :content, :status)
    # Strong Parametwrs  
    # 參數改成字串也沒關係，慣例上使用 symbol
  end

  def find_resume
    @resume =  Resume.find(params[:id])
  end
end