<?php
include ("plantilla_cabecera.php");
$tipo_persona = "";//Definición de variable
if(isset($_POST["tipo_persona"])) $tipo_persona = $_POST["tipo_persona"];
?>

<?php
include ("plantilla_menu.php");
?>
<script type="text/javascript">
//Funcion Nuevo registro
function New()
{	/*document.frmBrowse.accion.value = "new";
	document.frmBrowse.action="usuario_detalle.php";
	document.frmBrowse.submit();*/
  alert("Implementar registro de cliente");
}
</script>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Lista de clientes</h1>
          </div><!--
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Inicio</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div>-->
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <!-- Filtración de combos -->
        <div class="card-header">
          <form action="cliente.php" method="post">
            <div class="row">
              <div class="col-6">
                <!-- select -->
                <div class="form-group">
                  <label>Tipo de persona:</label>
                  <select class="form-control" name="tipo_persona">
                    <option value="">TODOS</option>
                    <option value="N" <?php if($tipo_persona == "N") echo "selected"; ?>>Natural</option>
                    <option value="J" <?php if($tipo_persona == "J") echo "selected"; ?>>Juridica</option>
                  </select>
                </div>
              </div><!--
              <div class="col-4">
                <div class="form-group">
                  <label>Select</label>
                  <select class="form-control">
                    <option>option 1</option>
                    <option>option 2</option>
                    <option>option 3</option>
                    <option>option 4</option>
                    <option>option 5</option>
                  </select>
                </div>-->
              </div>
              <div class="col-6">
                <div class="form-group">
                  <button id="submit" name="button" value="submit" class="btn btn-primary">Consultar</button>
                  <button name="button" value="Nuevo" class="btn btn-success" onclick="javascript:New();">Nuevo</button>
                </div>
              </div>
            </div>
          </form>
        </div>
        
        <!-- /.card-header -->
        <?php
        $sql = "SELECT `idcliente`, `tipo_persona`, `nombre`, `tipo_documento`, `numero_documento`, `direccion`, `telefono`, `correo`, `estado`, `fecha_hora_sistema` FROM `cliente` ";
        $sql.= "Where idcliente > 0 ";
        if($tipo_persona != "") $sql.= "and tipo_persona = '$tipo_persona' ";
        $sql.= "Order by nombre ";
        //exit($sql);
        $result=dbQuery($sql);
        $total_registros = mysqli_num_rows($result);
        ?>
        <div class="card-body">
          <table id="listado" class="table table-bordered table-striped">
            <thead>
            <tr>
              <th>Nombre</th>
              <th>Tipo persona</th>
              <th>Tipo de documento</th>
              <th>Nro. documento</th>
              <th>Dirección</th>
              <th>Teléfono</th>
              <th>Correo</th>
              <th>Estado</th>
              <th>Registro</th>
            </tr>
            </thead>
            <tbody>
            <?php 
              if($total_registros > 0)
              { //Existen datos
                while ($row = mysqli_fetch_array($result)) {
                  $estado = "Inactivo";
                  if($row["estado"] == "A"){
                    $estado = "Activo";
                  }
                  $tipo_persona = "Natural";
                  if($row["tipo_persona"] == "J"){
                    $tipo_persona = "Jurídica";
                  }
                  ?>
                  <tr>
                    <td><?php echo $row["nombre"];?></td>
                    <td><?php echo $tipo_persona;?></td>
                    <td><?php echo $row["tipo_documento"];?></td>
                    <td><?php echo $row["numero_documento"];?></td>
                    <td><?php echo $row["direccion"];?></td>
                    <td><?php echo $row["telefono"];?></td>
                    <td><?php echo $row["correo"];?></td>
                    <td><?php echo $estado;?></td>
                    <td><?php echo $row["fecha_hora_sistema"];?></td>
                  </tr>
                  <?php
                } 
              }
              else
              { //No existen datos
                echo "<tr><td colspan=9>No existen registros</td></tr>";
              }
            ?>
            </tbody>
          </table>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php
include ("plantilla_pie.php");
?>
<!-- Page specific script -->
<script>
  $(function () {
    $("#listado").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#listado_wrapper .col-md-6:eq(0)');
  });
</script>  