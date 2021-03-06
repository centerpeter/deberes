PGDMP                         y         	   heladeria    12.6    12.6 4    e           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            f           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            g           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            h           1262    25314 	   heladeria    DATABASE     �   CREATE DATABASE heladeria WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
    DROP DATABASE heladeria;
                postgres    false            �            1259    25424    Venta    TABLE       CREATE TABLE public."Venta" (
    id_venta integer NOT NULL,
    producto character varying,
    cliente character varying,
    cantidad_producto integer,
    fecha_compra date,
    estado boolean,
    precio double precision,
    empleado character varying
);
    DROP TABLE public."Venta";
       public         heap    postgres    false            �            1259    25368    bodega    TABLE     �   CREATE TABLE public.bodega (
    id_bodega integer NOT NULL,
    producto character varying(22),
    proveedor character varying(22),
    cantidad_producto integer,
    empleado character varying(22)
);
    DROP TABLE public.bodega;
       public         heap    postgres    false            �            1259    25393    caracteristica    TABLE     �   CREATE TABLE public.caracteristica (
    id_catacteristica integer NOT NULL,
    nombre character varying(22),
    descripcion character varying(22),
    cantidad integer,
    estado boolean
);
 "   DROP TABLE public.caracteristica;
       public         heap    postgres    false            �            1259    25398    caracteristica_producto    TABLE     �   CREATE TABLE public.caracteristica_producto (
    id_caracteristica_producto integer NOT NULL,
    caracteristica character varying,
    producto character varying,
    estado boolean
);
 +   DROP TABLE public.caracteristica_producto;
       public         heap    postgres    false            �            1259    25340    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    persona character varying(22),
    tipo_cliente character varying(22),
    numero_visitas integer,
    estado boolean
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    25330    empleado    TABLE     �   CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    persona character varying(22),
    puesto_trabajo character varying(22),
    horario_trabajo character varying(22),
    estado boolean
);
    DROP TABLE public.empleado;
       public         heap    postgres    false            �            1259    25411    facturacion    TABLE     G  CREATE TABLE public.facturacion (
    id_facturacion integer NOT NULL,
    precio double precision,
    producto character varying(22),
    empleado character varying(22),
    cliente character varying(22),
    subtotal double precision,
    total double precision,
    iva double precision,
    venta character varying(22)
);
    DROP TABLE public.facturacion;
       public         heap    postgres    false            �            1259    25315    persona    TABLE     �   CREATE TABLE public.persona (
    id_persona integer NOT NULL,
    nombre character varying(20),
    apellido character varying(20),
    cedula character varying(20),
    email character varying(20),
    telefono character varying(20)
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �            1259    25378    producto    TABLE     =  CREATE TABLE public.producto (
    id_producto integer NOT NULL,
    nombre_producto character varying(22),
    precio_producto character varying(22),
    descripcion_producto character varying(22),
    estado_producto boolean,
    categoria_producto character varying(22),
    tipo_producto character varying(22)
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    25320 	   proveedor    TABLE     �   CREATE TABLE public.proveedor (
    id_proveedor integer NOT NULL,
    persona character varying(20),
    empresa character varying(20),
    producto character varying(20),
    estado boolean
);
    DROP TABLE public.proveedor;
       public         heap    postgres    false            �            1259    25373    puesto    TABLE     �   CREATE TABLE public.puesto (
    id integer NOT NULL,
    nombre character varying(22),
    descripcion character varying(22),
    estado boolean
);
    DROP TABLE public.puesto;
       public         heap    postgres    false            �            1259    25416    reporte_venta    TABLE     �   CREATE TABLE public.reporte_venta (
    id_reporte_venta integer NOT NULL,
    venta character varying,
    facturacion character varying,
    empleado character varying
);
 !   DROP TABLE public.reporte_venta;
       public         heap    postgres    false            �            1259    25355    tipo_Cliente    TABLE     x   CREATE TABLE public."tipo_Cliente" (
    id_tipo_cliente integer NOT NULL,
    "nombreTipoCliente" character varying
);
 "   DROP TABLE public."tipo_Cliente";
       public         heap    postgres    false            �            1259    25383    tipo_producto    TABLE     �   CREATE TABLE public.tipo_producto (
    id_tipo_producto integer NOT NULL,
    nombre_tipo_producto character varying(22),
    estado character varying(22),
    descripcion character varying(22)
);
 !   DROP TABLE public.tipo_producto;
       public         heap    postgres    false            b          0    25424    Venta 
   TABLE DATA           y   COPY public."Venta" (id_venta, producto, cliente, cantidad_producto, fecha_compra, estado, precio, empleado) FROM stdin;
    public          postgres    false    215   �A       Z          0    25368    bodega 
   TABLE DATA           ]   COPY public.bodega (id_bodega, producto, proveedor, cantidad_producto, empleado) FROM stdin;
    public          postgres    false    207   B       ^          0    25393    caracteristica 
   TABLE DATA           b   COPY public.caracteristica (id_catacteristica, nombre, descripcion, cantidad, estado) FROM stdin;
    public          postgres    false    211   2B       _          0    25398    caracteristica_producto 
   TABLE DATA           o   COPY public.caracteristica_producto (id_caracteristica_producto, caracteristica, producto, estado) FROM stdin;
    public          postgres    false    212   OB       X          0    25340    cliente 
   TABLE DATA           \   COPY public.cliente (id_cliente, persona, tipo_cliente, numero_visitas, estado) FROM stdin;
    public          postgres    false    205   lB       W          0    25330    empleado 
   TABLE DATA           a   COPY public.empleado (id_empleado, persona, puesto_trabajo, horario_trabajo, estado) FROM stdin;
    public          postgres    false    204   �B       `          0    25411    facturacion 
   TABLE DATA           w   COPY public.facturacion (id_facturacion, precio, producto, empleado, cliente, subtotal, total, iva, venta) FROM stdin;
    public          postgres    false    213   �B       U          0    25315    persona 
   TABLE DATA           X   COPY public.persona (id_persona, nombre, apellido, cedula, email, telefono) FROM stdin;
    public          postgres    false    202   �B       \          0    25378    producto 
   TABLE DATA           �   COPY public.producto (id_producto, nombre_producto, precio_producto, descripcion_producto, estado_producto, categoria_producto, tipo_producto) FROM stdin;
    public          postgres    false    209   �B       V          0    25320 	   proveedor 
   TABLE DATA           U   COPY public.proveedor (id_proveedor, persona, empresa, producto, estado) FROM stdin;
    public          postgres    false    203   �B       [          0    25373    puesto 
   TABLE DATA           A   COPY public.puesto (id, nombre, descripcion, estado) FROM stdin;
    public          postgres    false    208   C       a          0    25416    reporte_venta 
   TABLE DATA           W   COPY public.reporte_venta (id_reporte_venta, venta, facturacion, empleado) FROM stdin;
    public          postgres    false    214   7C       Y          0    25355    tipo_Cliente 
   TABLE DATA           N   COPY public."tipo_Cliente" (id_tipo_cliente, "nombreTipoCliente") FROM stdin;
    public          postgres    false    206   TC       ]          0    25383    tipo_producto 
   TABLE DATA           d   COPY public.tipo_producto (id_tipo_producto, nombre_tipo_producto, estado, descripcion) FROM stdin;
    public          postgres    false    210   qC       �
           2606    25431    Venta Venta_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Venta"
    ADD CONSTRAINT "Venta_pkey" PRIMARY KEY (id_venta);
 >   ALTER TABLE ONLY public."Venta" DROP CONSTRAINT "Venta_pkey";
       public            postgres    false    215            �
           2606    25372    bodega bodega_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.bodega
    ADD CONSTRAINT bodega_pkey PRIMARY KEY (id_bodega);
 <   ALTER TABLE ONLY public.bodega DROP CONSTRAINT bodega_pkey;
       public            postgres    false    207            �
           2606    25397 "   caracteristica caracteristica_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.caracteristica
    ADD CONSTRAINT caracteristica_pkey PRIMARY KEY (id_catacteristica);
 L   ALTER TABLE ONLY public.caracteristica DROP CONSTRAINT caracteristica_pkey;
       public            postgres    false    211            �
           2606    25405 4   caracteristica_producto caracteristica_producto_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.caracteristica_producto
    ADD CONSTRAINT caracteristica_producto_pkey PRIMARY KEY (id_caracteristica_producto);
 ^   ALTER TABLE ONLY public.caracteristica_producto DROP CONSTRAINT caracteristica_producto_pkey;
       public            postgres    false    212            �
           2606    25344    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    205            �
           2606    25334    empleado empleado_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public            postgres    false    204            �
           2606    25415    facturacion facturacion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.facturacion
    ADD CONSTRAINT facturacion_pkey PRIMARY KEY (id_facturacion);
 F   ALTER TABLE ONLY public.facturacion DROP CONSTRAINT facturacion_pkey;
       public            postgres    false    213            �
           2606    25319    persona persona_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id_persona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    202            �
           2606    25382    producto producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    209            �
           2606    25324    proveedor proveedor_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id_proveedor);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public            postgres    false    203            �
           2606    25377    puesto puesto_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.puesto
    ADD CONSTRAINT puesto_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_pkey;
       public            postgres    false    208            �
           2606    25423     reporte_venta reporte_venta_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.reporte_venta
    ADD CONSTRAINT reporte_venta_pkey PRIMARY KEY (id_reporte_venta);
 J   ALTER TABLE ONLY public.reporte_venta DROP CONSTRAINT reporte_venta_pkey;
       public            postgres    false    214            �
           2606    25362    tipo_Cliente tipo_Cliente_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."tipo_Cliente"
    ADD CONSTRAINT "tipo_Cliente_pkey" PRIMARY KEY (id_tipo_cliente);
 L   ALTER TABLE ONLY public."tipo_Cliente" DROP CONSTRAINT "tipo_Cliente_pkey";
       public            postgres    false    206            �
           2606    25387     tipo_producto tipo_producto_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tipo_producto
    ADD CONSTRAINT tipo_producto_pkey PRIMARY KEY (id_tipo_producto);
 J   ALTER TABLE ONLY public.tipo_producto DROP CONSTRAINT tipo_producto_pkey;
       public            postgres    false    210            �
           2606    25406 8   caracteristica fk_caracteristica_caracteristica_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.caracteristica
    ADD CONSTRAINT fk_caracteristica_caracteristica_producto FOREIGN KEY (id_catacteristica) REFERENCES public.caracteristica_producto(id_caracteristica_producto) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 b   ALTER TABLE ONLY public.caracteristica DROP CONSTRAINT fk_caracteristica_caracteristica_producto;
       public          postgres    false    2762    212    211            �
           2606    25345    cliente fk_cliente_persona    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cliente_persona FOREIGN KEY (id_cliente) REFERENCES public.persona(id_persona) ON UPDATE RESTRICT ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fk_cliente_persona;
       public          postgres    false    202    2742    205            �
           2606    25350    empleado fk_empleado_persona    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_empleado_persona FOREIGN KEY (id_empleado) REFERENCES public.persona(id_persona) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 F   ALTER TABLE ONLY public.empleado DROP CONSTRAINT fk_empleado_persona;
       public          postgres    false    202    2742    204            �
           2606    25325    proveedor fk_provee_persona    FK CONSTRAINT     �   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT fk_provee_persona FOREIGN KEY (id_proveedor) REFERENCES public.persona(id_persona) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 E   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT fk_provee_persona;
       public          postgres    false    202    2742    203            �
           2606    25388    tipo_producto fk_tipo_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_producto
    ADD CONSTRAINT fk_tipo_producto FOREIGN KEY (id_tipo_producto) REFERENCES public.producto(id_producto) ON UPDATE RESTRICT ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.tipo_producto DROP CONSTRAINT fk_tipo_producto;
       public          postgres    false    2756    209    210            �
           2606    25363 #   tipo_Cliente fk_tipocliente_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public."tipo_Cliente"
    ADD CONSTRAINT fk_tipocliente_cliente FOREIGN KEY (id_tipo_cliente) REFERENCES public.persona(id_persona) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public."tipo_Cliente" DROP CONSTRAINT fk_tipocliente_cliente;
       public          postgres    false    2742    206    202            b      x������ � �      Z      x������ � �      ^      x������ � �      _      x������ � �      X      x������ � �      W      x������ � �      `      x������ � �      U      x������ � �      \      x������ � �      V      x������ � �      [      x������ � �      a      x������ � �      Y      x������ � �      ]      x������ � �     