# Local dev only: github-pages pins Liquid 4.0.3 / Jekyll 3.9, which call
# Object#tainted?/#taint/#untaint (removed in Ruby 3.2). Restore them as no-ops.
# Loaded via RUBYOPT by the serve command in CLAUDE.md; GitHub Pages never sees it.
class Object
  def tainted?; false; end unless method_defined?(:tainted?)
  def taint; self; end unless method_defined?(:taint)
  def untaint; self; end unless method_defined?(:untaint)
end
