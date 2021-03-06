class FamilyMembersController < ApplicationController
  # GET /family_members
  # GET /family_members.json
  def index
    @family_members = FamilyMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @family_members }
    end
  end

  # GET /family_members/1
  # GET /family_members/1.json
  def show
    @family_member = FamilyMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family_member }
    end
  end

  # GET /family_members/new
  # GET /family_members/new.json
  def new
    @family_member = FamilyMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @family_member }
    end
  end

  # GET /family_members/1/edit
  def edit
    @family_member = FamilyMember.find(params[:id])
  end

  # POST /family_members
  # POST /family_members.json
  def create
    @family_member = FamilyMember.new(params[:family_member])

    respond_to do |format|
      if @family_member.save
        format.html { redirect_to @family_member, notice: 'Family member was successfully created.' }
        format.json { render json: @family_member, status: :created, location: @family_member }
      else
        format.html { render action: "new" }
        format.json { render json: @family_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /family_members/1
  # PUT /family_members/1.json
  def update
    @family_member = FamilyMember.find(params[:id])

    respond_to do |format|
      if @family_member.update_attributes(params[:family_member])
        format.html { redirect_to @family_member, notice: 'Family member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @family_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_members/1
  # DELETE /family_members/1.json
  def destroy
    @family_member = FamilyMember.find(params[:id])
    @family_member.destroy

    respond_to do |format|
      format.html { redirect_to family_members_url }
      format.json { head :no_content }
    end
  end
end
