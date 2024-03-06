class Api::V1::VideosController < ApplicationController
    def show
        response = VideosApi::Client.query(Queries::Video::Query, variables: { id: params[:id] })
        render json: {data: response.data.video.to_h}
    end
end
