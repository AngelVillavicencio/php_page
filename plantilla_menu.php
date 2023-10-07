  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index.php" class="brand-link">
      <img src="libreria/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light"><span style="color: #FFFFFF;">Mi Mudanza Top</span></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <?php
        $avatar = "libreria/dist/img/avatar2.png"; // Valor por defecto
        if(isset($_SESSION["AVATAR"]) && $_SESSION["AVATAR"] != "")
        {
          $avatar = "descargas/usuario/".$_SESSION["AVATAR"];
        }
        ?>
        <div class="image">
          <img src="<?php echo $avatar?>" class="img-circle elevation-2" alt="<?php echo $_SESSION["USUARIO"];?>">
        </div>
        <div class="info">
          <a href="#" class="d-block"><span style="color: #FFFFFF;"><?php echo $_SESSION["USUARIO"];?></span></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <!------------------------------------------------------------------------------------>
          <!--ADMINISTRACION-->
          <!------------------------------------------------------------------------------------>
          <?php 
          if(isset($_SESSION["PERFIL"]) && $_SESSION["PERFIL"] == "ADMIN")
          { ?>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Administración
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="usuario.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Usuarios sistema</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="personal.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Personal</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="planillas.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Planillas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pago_proveedores.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pago de Proveedores</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="contrato_servicio.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Contratos de servicios</p>
                </a>
              </li>
            </ul>
          </li>
          <?php } ?> 
          <!------------------------------------------------------------------------------------>
          <!--OPERACIONES-->
          <!------------------------------------------------------------------------------------>
          <?php 
          if(isset($_SESSION["PERFIL"]) && ($_SESSION["PERFIL"] == "ADMIN" || $_SESSION["PERFIL"] == "OPERA"))
          { ?>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
              Operaciones
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="tipo_servicio.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tipos de servicios</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="gestion_os.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Gestión de O/S</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="mudanza.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Mudanza</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="plan_atencion.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Plan de atención</p>
                </a>
              </li>
            </ul>
          </li>
          <?php } ?> 
          <!------------------------------------------------------------------------------------>
          <!--Comercial/Ventas-->
          <!------------------------------------------------------------------------------------>
          <?php 
          if(isset($_SESSION["PERFIL"]) && ($_SESSION["PERFIL"] == "ADMIN" || $_SESSION["PERFIL"] == "COMER"))
          { ?>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Comercial/Ventas
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="cliente.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Clientes</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../charts/flot.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Cotizaciones</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../charts/inline.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Ventas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../charts/uplot.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Reclamos</p>
                </a>
              </li>
            </ul>
          </li>
          <?php } ?> 
          <!------------------------------------------------------------------------------------>
          <!--Logística-->
          <!------------------------------------------------------------------------------------>
          <?php 
          if(isset($_SESSION["PERFIL"]) && ($_SESSION["PERFIL"] == "ADMIN" || $_SESSION["PERFIL"] == "LOGIS"))
          { ?>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tree"></i>
              <p>
              Logística
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../UI/general.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Transporte</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../UI/icons.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Contratación de Prov.</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="producto.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Insumos/Productos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../UI/sliders.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Almacén</p>
                </a>
              </li>
            </ul>
          </li>
          <?php } ?> 
          <!------------------------------------------------------------------------------------>
          <!--Finanzas y Contabilidad-->
          <!------------------------------------------------------------------------------------>
          <?php 
          if(isset($_SESSION["PERFIL"]) && ($_SESSION["PERFIL"] == "ADMIN" || $_SESSION["PERFIL"] == "CONTA"))
          { ?>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
              Contabilidad
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../forms/general.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Inversionistas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../forms/advanced.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Préstamos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../forms/editors.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Balance</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../forms/validation.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Proyección</p>
                </a>
              </li>
            </ul>
          </li>
          <?php } ?> 
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>