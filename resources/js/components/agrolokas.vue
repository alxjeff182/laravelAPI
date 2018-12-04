<template>
   <div>
    <h2 align="center" style="color: white;">Data Karyawan</h2>
    

    <div class="container" style="color: rgb(46, 125, 50); background: rgb(200, 230, 201); opacity: 0.9;
    filter: alpha(opacity=50);">
    <br>
  <div class="row">


<ul><h4 align="center">Form Data</h4><br>
    <div class="col">
 <form @submit.prevent="addAgroloka" class="mb-2">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="name" v-model="agroloka.name">
    </div>
    <div class="form-group">
        <textarea type="text" class="form-control" placeholder="address" v-model="agroloka.address">
    </textarea>
    </div>
    <div class="form-group">
        <input type="text" class="form-control" placeholder="+62x-xxx-xxxx-xxx" v-model="agroloka.contact" pattern="\+?([ -]?\d+)+|\(\d+\)([ -]\d+)" required>
    </div>
    <div class="form-group">
        <input type="email" class="form-control" placeholder="email" v-model="agroloka.email">
    </div>
    <div class="form-group">
        <textarea type="text" class="form-control" placeholder="note" v-model="agroloka.note">
    </textarea>
    </div>
    <button type="submit" class="btn btn-light btn-block">Save</button>
    </form>
        </div>
        </ul>
        <div class="col">
        <nav aria-label="Page navigation example">
    <ul class="pagination">
        <li v-bind:class="[{disabled: !pagination.prev_page_url}]" class="page-item">
        <a class="page-link" style="color: green !important;" href="#" @click="fetchAgrolokas(pagination.prev_page_url)">Previous</a></li>

        <li class="page-item disabled"><a class="page-link text-dark" href="#">Page {{pagination.current_page}} of {{pagination.last_page}}</a></li>

        <li v-bind:class="[{disabled: !pagination.next_page_url}]" class="page-item">
        <a class="page-link" style="color: green !important;" href="#" @click="fetchAgrolokas(pagination.next_page_url)">Next</a></li>
    </ul>
    </nav>
    <div class="card card-note mb-2" v-for="agroloka in agrolokas" v-bind:key="agroloka.id">

<table class="table table-bordered">
    <thead>
      <tr>
        <th><i class="fa fa-cog fa-spin fa-2x fa-fw"></i></th>
        <th>Name</th>
        <th>Address</th>
        <th>Contact</th>
        <th>Email</th>
        <th>Note</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td align="center">
        <a class="btn btn-default" @click="editAgroloka(agroloka)"><em class="fa fa-pencil"></em></a>
        <a class="btn btn-default" @click="deleteAgroloka(agroloka.id)"><em class="fa fa-trash"></em></a>
        </td>
        <td>{{agroloka.name}}</td>
        <td>{{agroloka.address}}</td>
        <td>{{agroloka.contact}}</td>
        <td>{{agroloka.email}}</td>
        <td>{{agroloka.note}}</td>
      </tr>
    </tbody>
  </table>
   </div>
   </div>
    </div>
     </div>
      </div>
</template>

<script>
    export default{
        data(){
            return{
                agrolokas: [],
                agroloka: {
                    id:'',
                    name:'',
                    address:'',
                    contact:'',
                    email:'',
                    note:''
                },
                agroloka_id:'',
                pagination:{},
                edit:false
            }
        },
        created(){
            this.fetchAgrolokas();
        },

        methods:{
            fetchAgrolokas(page_url){
                let vm = this;
                page_url = page_url || '/api/agrolokas'
                fetch(page_url)
                .then(res=> res.json())
                .then(res=>{
                    this.agrolokas=res.data;
                    vm.makePagination(res.meta, res.links);
                })
                .catch(err=>console.log(err));
            }, 
            makePagination(meta, links){
                let pagination = {
                current_page: meta.current_page,
                last_page: meta.last_page,
                next_page_url: links.next,
                prev_page_url: links.prev
                }
                this.pagination=pagination;
            },
            deleteAgroloka(id){
                if(confirm('Are you sure ?')){
                    fetch(`api/agroloka/${id}`, {
                        method:'delete'
                    })
                    .then(res=> res.json())
                    .then(data=> {
                        alert('Data Removed');
                        this.fetchAgrolokas();
                    })
                    .catch(err=>console.log(err));
                }
            },
            addAgroloka(){
                if(this.edit === false){
                    //add
                    fetch('api/agroloka', {
                        method:'post',
                        body: JSON.stringify(this.agroloka),
                        headers:{
                            'content-type': 'application/json'
                        }
                    })
                    .then(res => res.json())
                    .then(data => {
                        this.agroloka.name='';
                        this.agroloka.address='';
                        this.agroloka.contact='';
                        this.agroloka.email='';
                        this.agroloka.note='';
                        alert('Data Added');
                        this.fetchAgrolokas();
                    })
                    .catch(err=> console.log(err));
                } else {
                    //update
                     fetch('api/agroloka', {
                        method:'put',
                        body: JSON.stringify(this.agroloka),
                        headers:{
                            'content-type': 'application/json'
                        }
                    })
                    .then(res => res.json())
                    .then(data => {
                        this.agroloka.name='';
                        this.agroloka.address='';
                        this.agroloka.contact='';
                        this.agroloka.email='';
                        this.agroloka.note='';
                        alert('Data Updated');
                        this.fetchAgrolokas();
                    })
                    .catch(err=> console.log(err));
                }
            },
            editAgroloka(agroloka){
                this.edit=true;
                this.agroloka.id=agroloka.id;
                this.agroloka.agroloka_id=agroloka.id;
                this.agroloka.name=agroloka.name;
                this.agroloka.address=agroloka.address;
                this.agroloka.contact=agroloka.contact;
                this.agroloka.email=agroloka.email;
                this.agroloka.note=agroloka.note;

            }
        }
    }
</script>