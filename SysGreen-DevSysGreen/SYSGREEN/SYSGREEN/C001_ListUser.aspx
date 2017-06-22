<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Menu.Master" CodeBehind="C001_ListUser.aspx.cs" Inherits="SYSGREEN.C001_ListUser" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <script>
        $(function () {
            $('#table').bootstrapTable({
                columns: [{
                    field: 'id',
                    title: 'Id',
                    align: 'center',
                    valign: 'middle',
                    sortable: true,
                    editable: true,
                }, {
                    field: 'email',
                    title: 'Email',
                    align: 'center',
                    valign: 'middle',
                    sortable: true,
                    editable: true,
                }, {
                    field: 'department',
                    title: 'Bộ phận',
                    align: 'center',
                    valign: 'middle',
                    sortable: true,
                    editable: true,

                }, {
                    field: 'local',
                    title: 'Cơ sở',
                    align: 'center',
                    valign: 'middle',
                    sortable: true,
                    editable: true,
                }, {
                    field: 'dateCreate',
                    title: 'Ngày tạo',
                    align: 'center',
                    valign: 'middle',
                    sortable: true,
                    editable: true,
                }, {
                    field: 'user',
                    title: 'User',
                    align: 'center',
                    valign: 'middle',
                    sortable: true,
                    editable: {
                        type: 'text',
                        title: 'User',
                        validate: function (value) {
                            value = $.trim(value);
                            if (!value) {
                                return 'This field is required';
                            }
                            if (!/^\$/.test(value)) {
                                return 'This field needs to start width $.'
                            }
                            var data = $table.bootstrapTable('getData'),
                                index = $(this).parents('tr').data('index');
                            console.log(data[index]);
                            return '';
                        }
                    },
                    footerFormatter: userFormatter
                }, {
                    field: 'operate',
                    title: 'Thao tác',
                    align: 'center',
                    valign: 'middle',
                    events: operateEvents,
                    formatter: operateFormatter
                }],
                


                data: [{
                    id: 1,
                    email: 'Duytn.tb@gmil.com',
                    department: 'sele',
                    local: 'Hà nội',
                    dateCreate: '20/5/2017',
                    user: 'Duytn4'
                }, {
                    id: 2,
                    email: 'Duytn.tb@gmil.com',
                    department: 'sele',
                    local: 'HCM',
                    dateCreate: '20/5/2017',
                    user: 'Duytn4'
                }, {
                    id: 3,
                    email: 'Duytn.tb@gmil.com',
                    department: 'sele',
                    local: 'Hà nội',
                    dateCreate: '20/5/2017',
                    user: 'Duytn4'
                }, {
                    id: 4,
                    email: 'Duytn.tb@gmil.com',
                    department: 'sele',
                    local: 'Hà nội',
                    dateCreate: '20/5/2017',
                    user: 'Duytn4'
                }, {
                    id: 5,
                    email: 'Duytn.tb@gmil.com',
                    department: 'sele',
                    local: 'Hà nội',
                    dateCreate: '20/5/2017',
                    user: 'Duytn4'
                },{
                     id: 6,
                     email: 'Duytn.tb@gmil.com',
                     department: 'sele',
                     local: 'HCM',
                     dateCreate: '20/5/2017',
                     user: 'Duytn4'
                 }, {
                     id: 7,
                     email: 'Duytn.tb@gmil.com',
                     department: 'sele',
                     local: 'Hà nội',
                     dateCreate: '20/5/2017',
                     user: 'Duytn4'
                 }, {
                     id: 8,
                     email: 'Duytn.tb@gmil.com',
                     department: 'sele',
                     local: 'Hà nội',
                     dateCreate: '20/5/2017',
                     user: 'Duytn4'
                 }, {
                     id: 9,
                     email: 'Duytn.tb@gmil.com',
                     department: 'sele',
                     local: 'HCM',
                     dateCreate: '20/5/2017',
                     user: 'Duytn4'
                 }, {
                     id: 10,
                     email: 'Duytn.tb@gmil.com',
                     department: 'sele',
                     local: 'Hà nội',
                     dateCreate: '20/5/2017',
                     user: 'Duytn4'
                 }, {
                     id: 11,
                     email: 'Duytn.tb@gmil.com',
                     department: 'sele',
                     local: 'Hà nội',
                     dateCreate: '20/5/2017',
                     user: 'Duytn4'
                 }, {
                     id: 12,
                     email: 'Duytn.tb@gmil.com',
                     department: 'sele',
                     local: 'HCM',
                     dateCreate: '20/5/2017',
                     user: 'Duytn4'
                 }, {
                     id: 13,
                     email: 'Duytn.tb@gmil.com',
                     department: 'sele',
                     local: 'Hà nội',
                     dateCreate: '20/5/2017',
                     user: 'Duytn4'
                 }, {
                     id: 14,
                     email: 'Duytn.tb@gmil.com',
                     department: 'sele',
                     local: 'Hà nội',
                     dateCreate: '20/5/2017',
                     user: 'Duytn4'
                 }]
            });
        });
        // function
        function userFormatter(data) {
            return data.length;
        }
        function operateFormatter(value, row, index) {
            return [
                '<a class="like" href="javascript:void(0)" title="Sửa">',
                '<i class="glyphicon glyphicon-heart"></i>',
                '</a>  ',
                '<a class="remove" href="javascript:void(0)" title="Xoá">',
                '<i class="glyphicon glyphicon-remove"></i>',
                '</a>'
            ].join('');
        }

        window.operateEvents = {
            'click .like': function (e, value, row, index) {
                alert('You click like action, row: ' + JSON.stringify(row));
            },
            'click .remove': function (e, value, row, index) {
                $('#table').bootstrapTable('remove', {
                    field: 'id',
                    values: [row.id]
                });
            }
        };

    </script>
    <table id="table" 
        data-pagination="true"
        data-search="true" 
        data-show-refresh="true" 
        data-show-toggle="true" data-show-columns="true" 
        data-show-pagination-switch="true"
        data-page-list="[10, 25, 50, 100, ALL]" 
        data-show-footer="false" 
        ></table>
    </asp:Content>
