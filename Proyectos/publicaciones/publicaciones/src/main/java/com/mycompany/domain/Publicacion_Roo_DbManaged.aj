// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mycompany.domain;

import com.mycompany.domain.Categoria;
import com.mycompany.domain.Imagen;
import com.mycompany.domain.Publicacion;
import com.mycompany.domain.Transaccion;
import com.mycompany.domain.Usuario;
import com.mycompany.domain.Visita;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Publicacion_Roo_DbManaged {
    
    @OneToMany(mappedBy = "publicacion")
    private Set<Imagen> Publicacion.imagens;
    
    @OneToMany(mappedBy = "publicacion")
    private Set<Transaccion> Publicacion.transaccions;
    
    @OneToMany(mappedBy = "publicacion")
    private Set<Visita> Publicacion.visitas;
    
    @ManyToOne
    @JoinColumn(name = "categoria", referencedColumnName = "codigo", nullable = false)
    private Categoria Publicacion.categoria;
    
    @ManyToOne
    @JoinColumn(name = "usuario", referencedColumnName = "codigo", nullable = false)
    private Usuario Publicacion.usuario;
    
    @Column(name = "titulo", length = 100)
    @NotNull
    private String Publicacion.titulo;
    
    @Column(name = "descripcion", columnDefinition = "TEXT")
    private String Publicacion.descripcion;
    
    @Column(name = "tipo")
    @NotNull
    private Character Publicacion.tipo;
    
    @Column(name = "cantidad")
    @NotNull
    private Integer Publicacion.cantidad;
    
    @Column(name = "precio", precision = 10, scale = 2)
    @NotNull
    private BigDecimal Publicacion.precio;
    
    @Column(name = "fecha_creacion")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date Publicacion.fechaCreacion;
    
    @Column(name = "duracion")
    @NotNull
    private Integer Publicacion.duracion;
    
    @Column(name = "estado")
    @NotNull
    private Character Publicacion.estado;
    
    public Set<Imagen> Publicacion.getImagens() {
        return imagens;
    }
    
    public void Publicacion.setImagens(Set<Imagen> imagens) {
        this.imagens = imagens;
    }
    
    public Set<Transaccion> Publicacion.getTransaccions() {
        return transaccions;
    }
    
    public void Publicacion.setTransaccions(Set<Transaccion> transaccions) {
        this.transaccions = transaccions;
    }
    
    public Set<Visita> Publicacion.getVisitas() {
        return visitas;
    }
    
    public void Publicacion.setVisitas(Set<Visita> visitas) {
        this.visitas = visitas;
    }
    
    public Categoria Publicacion.getCategoria() {
        return categoria;
    }
    
    public void Publicacion.setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
    
    public Usuario Publicacion.getUsuario() {
        return usuario;
    }
    
    public void Publicacion.setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    
    public String Publicacion.getTitulo() {
        return titulo;
    }
    
    public void Publicacion.setTitulo(String titulo) {
        this.titulo = titulo;
    }
    
    public String Publicacion.getDescripcion() {
        return descripcion;
    }
    
    public void Publicacion.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public Character Publicacion.getTipo() {
        return tipo;
    }
    
    public void Publicacion.setTipo(Character tipo) {
        this.tipo = tipo;
    }
    
    public Integer Publicacion.getCantidad() {
        return cantidad;
    }
    
    public void Publicacion.setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }
    
    public BigDecimal Publicacion.getPrecio() {
        return precio;
    }
    
    public void Publicacion.setPrecio(BigDecimal precio) {
        this.precio = precio;
    }
    
    public Date Publicacion.getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void Publicacion.setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public Integer Publicacion.getDuracion() {
        return duracion;
    }
    
    public void Publicacion.setDuracion(Integer duracion) {
        this.duracion = duracion;
    }
    
    public Character Publicacion.getEstado() {
        return estado;
    }
    
    public void Publicacion.setEstado(Character estado) {
        this.estado = estado;
    }
    
}
