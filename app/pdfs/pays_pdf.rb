class PaysPdf < Prawn::Document
	def initialize(pays)
     super(top_Margin: 70)
   @pays=pays
   text "pagos" , size: 30, style: :bold
   line_items
	end

	def line_items
		move_down 20
		table line_item_all
	end

    def line_item_all
    	[["monto","mes","Apoderado "]]+
    	@pays.map do  |item|
    	[item.monto, item.mes, item.parent.nombre, item.parent.apellido]
    	end
    	end
end
