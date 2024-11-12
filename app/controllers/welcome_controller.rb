class WelcomeController < ApplicationController
  before_action :set_data, except: [:new]
  def index

  end

  def new
    
  end

  def show
    @member = @data.find { |item| item[:id] == params[:id] }
    redirect_to root_path unless @member
  end

  def demo
    
  end
  private

  def set_data
    @data = [
      {
        id: "1",
        name: "Leslie Alexander",
        email: "leslie.alexander@example.com",
        role: "Co-Founder / CEO",
        active_at: "3h ago",
        image: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
      },
      {
        id: "2",
        name: "Michael Foster",
        email: "michael.foster@example.com",
        role: "Co-Founder / CTO",
        active_at: "3h ago",
        image: "https://images.unsplash.com/photo-1519244703995-f4e0f30006d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
      },
      {
        id: "3",
        name: "Dries Vincent",
        email: "dries.vincent@example.com",
        role: "Business Relations",
        active_at: "Online",
        image: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
      },
      {
        id: "4",
        name: "Lindsay Walton",
        email: "lindsay.walton@example.com",
        role: "Front-end Developer",
        active_at: "3h ago",
        image: "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
      },
      {
        id: "5",
        name: "Courtney Henry",
        email: "courtney.henry@example.com",
        role: "Designer",
        active_at: "3h ago",
        image: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
      },
      {
        id: "6",
        name: "Tom Cook",
        email: "tom.cook@example.com",
        role: "Director of Product",
        active_at: "Online",
        image: "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
      }
    ]
  end
end
