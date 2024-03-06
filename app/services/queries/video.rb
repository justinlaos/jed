module Queries::Video
    Query = VideosApi::Client.parse <<-'GRAPHQL'
        query($id: ID!) {
            video(id: $id) {
                title
                description
                presenterDisplayName
                primaryImageSet {
                    width
                    height
                    url
                }
            }
        }
    GRAPHQL
end