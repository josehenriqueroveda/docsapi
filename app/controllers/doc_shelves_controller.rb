class DocShelvesController < ApplicationController
  before_action :set_doc_shelf, only: %i[ show update destroy ]

  # GET /doc_shelves
  def index
    @doc_shelves = DocShelf.all

    render json: @doc_shelves
  end

  # GET /doc_shelves/1
  def show
    render json: @doc_shelf
  end

  # POST /doc_shelves
  def create
    @doc_shelf = DocShelf.new(doc_shelf_params)

    if @doc_shelf.save
      render json: @doc_shelf, status: :created, location: @doc_shelf
    else
      render json: @doc_shelf.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doc_shelves/1
  def update
    if @doc_shelf.update(doc_shelf_params)
      render json: @doc_shelf
    else
      render json: @doc_shelf.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doc_shelves/1
  def destroy
    @doc_shelf.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_shelf
      @doc_shelf = DocShelf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doc_shelf_params
      params.require(:doc_shelf).permit(:key_area, :limit)
    end
end
