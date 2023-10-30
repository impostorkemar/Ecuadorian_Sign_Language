import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { InitComponent } from './home/init/init.component';
import { AuthGuard } from './services/auth.guard';
import { CrudDatabaseComponent } from './base-interface/crud-database/crud-database.component';
import { CrudWordComponent } from './base-interface/crud-word/crud-word.component';
import { UpdateWordComponent } from './base-interface/update-word/update-word.component';

const routes: Routes = [
  {path: '', redirectTo: 'init', pathMatch: 'full'},  
  {path: 'init', component: InitComponent},
  {path: 'crud_database', component: CrudDatabaseComponent, canActivate: [AuthGuard], data: {role: 'admin'}},
  {path: 'crud_word', component: CrudWordComponent, canActivate: [AuthGuard], data: {role: 'admin'}},
  {path: 'update_word', component: UpdateWordComponent, canActivate: [AuthGuard], data: {role: 'admin'}},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
