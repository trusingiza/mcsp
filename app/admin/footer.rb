module ActiveAdmin
  module Views
    class Footer < Component

      def build
        super :id => "footer"                                                    
        super :style => "text-align: center;"                                     

        div do                                                                   
           "Copyright #{Date.today.year} JHPIEGO"                                       
        end
      end

    end
  end
end