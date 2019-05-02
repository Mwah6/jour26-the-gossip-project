class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end


def new
@user = User.new
end
  def create
    @user = User.new(content: params[:content], title: params[:title], user: User.all.sample)
  if @user.save # essaie de sauvegarder en base @gossip
    flash[:success] = "Ton gossip a été ajouté !"
    redirect_to gossips_path
  else
    flash[:danger] = "Ton gossip n'est pas valide !"
    render new_gossip_path
  end

end



end
