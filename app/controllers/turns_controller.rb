class TurnsController < ApplicationController
  # GET /turns
  # GET /turns.json
  def index
    @turns = User.find_by_id(session[:user_id]).turns

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @turns }
    end
  end

  # GET /turns/1
  # GET /turns/1.json
  def show
    @turn = Turn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @turn }
    end
  end

  # GET /turns/new
  # GET /turns/new.json
  def new
    @turn = Turn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @turn }
    end
  end

  # GET /turns/1/edit
  def edit
    @turn = Turn.find(params[:id])

    respond_to do |format|
      format.js { render 'edit' }
      format.html { render 'edit' }
    end  
  end

  # POST /turns
  # POST /turns.json
  def create
    @turn = Turn.new(params[:turn])

    respond_to do |format|
      if @turn.save
        format.js { render 'create' }
        format.html { redirect_to exercises_path, notice: 'Turn was successfully created.' }
        format.json { render json: @turn, status: :created, location: @turn }
      else
        format.html { render action: "new" }
        format.json { render json: @turn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /turns/1
  # PUT /turns/1.json
  def update
    @turn = Turn.find(params[:id])

    respond_to do |format|
      if @turn.update_attributes(params[:turn])
        format.js { render 'update' }
        format.html { redirect_to exercises_url, notice: 'Turn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @turn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turns/1
  # DELETE /turns/1.json
  def destroy
    @turn = Turn.find(params[:id])
    @turn.destroy
 
    respond_to do |format|
      format.js {render 'destroy'}
      format.html { redirect_to exercises_url }
      format.json { head :no_content }
    end
  end
end
