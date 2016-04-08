class StreamsController < ApplicationController
  def index

  end

  private

  def streams
    stream = Struct.new(:title, :desc) do
      def to_partial_path
        'stream'
      end

      def to_model
        Stream.new
      end
    end
    10.times.map {|i| stream.new("Stream #{i}", "Hey! Check out this steam!")}
  end
  helper_method :streams
end
