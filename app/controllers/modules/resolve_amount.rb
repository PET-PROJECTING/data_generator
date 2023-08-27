module ResolveAmount
  DEFAULT_AMOUNT = 10

  def resolve_amount
    params[:amount].to_i || DEFAULT_AMOUNT
  end
end
