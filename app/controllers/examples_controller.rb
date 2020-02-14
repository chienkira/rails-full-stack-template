class ExamplesController < ApplicationController
  # GET /examples
  def index
    @examples = Example.all
  end

  # GET /examples/new
  def new
    @example = Example.new
  end

  # POST /examples
  def create
    @example = Example.new(example_params)

    if @example.save
      redirect_to examples_path, notice: 'Example was successfully created.'
    else
      render :new
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def example_params
    params.require(:example).permit(:name)
  end
end
