class TinymceAssetsController < ApplicationController
   def create
     DataFile.save(params[:file])

     render json: {
     image: {
       url: view_context.image_url(image)
      }
    }
  end
end
