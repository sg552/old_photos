class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]

  def index
    @organizations = Organization.all
  end

  def show
  end

  def new
    @organization = Organization.new
  end

  def edit
  end

  def create
    @organization = Organization.new(organization_params)

    respond_to do |format|
      if @organization.save
        redirect_to @organization, notice: 'Organization was successfully created.'
      else
        render action: 'new'
      end
    end
  end

  def update
    respond_to do |format|
      if @organization.update(organization_params)
        redirect_to @organization, notice: 'Organization was successfully updated.'
      else
        render action: 'edit'
      end
    end
  end

  def destroy
    @organization.destroy
    respond_to do |format|
      redirect_to organizations_url
    end
  end

  private
    def set_organization
      @organization = Organization.find(params[:id])
    end

    def organization_params
      params.require(:organization).permit(:location, :name, :date)
    end
end
