export interface CreateTiketDTO {
  id?: any;
  problema_informado?: string;
  observacao?: string;
  prioridadeId: number | null;
  empresa?: any;
  tecnico?: any;
  created_at?: Date;
  update_at?: Date;
  categoriaId?: number | null;
  empresaId?: number | null;
  tecnicoId?: number | null;
  tiketStatusId?: number | null;
}
