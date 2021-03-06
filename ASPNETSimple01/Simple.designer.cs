﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     O código foi gerado por uma ferramenta.
//     Versão de Tempo de Execução:4.0.30319.42000
//
//     As alterações ao arquivo poderão causar comportamento incorreto e serão perdidas se
//     o código for gerado novamente.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ASPNETSimple01
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="simpledb")]
	public partial class SimpleDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertPessoas(Pessoas instance);
    partial void UpdatePessoas(Pessoas instance);
    partial void DeletePessoas(Pessoas instance);
    partial void InsertCidades(Cidades instance);
    partial void UpdateCidades(Cidades instance);
    partial void DeleteCidades(Cidades instance);
    #endregion
		
		public SimpleDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["simpledbConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public SimpleDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SimpleDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SimpleDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SimpleDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Pessoas> Pessoas
		{
			get
			{
				return this.GetTable<Pessoas>();
			}
		}
		
		public System.Data.Linq.Table<Cidades> Cidades
		{
			get
			{
				return this.GetTable<Cidades>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Pessoas")]
	public partial class Pessoas : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _idPessoa;
		
		private string _nome;
		
		private string _telefone;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidPessoaChanging(int value);
    partial void OnidPessoaChanged();
    partial void OnnomeChanging(string value);
    partial void OnnomeChanged();
    partial void OntelefoneChanging(string value);
    partial void OntelefoneChanged();
    #endregion
		
		public Pessoas()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_idPessoa", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int idPessoa
		{
			get
			{
				return this._idPessoa;
			}
			set
			{
				if ((this._idPessoa != value))
				{
					this.OnidPessoaChanging(value);
					this.SendPropertyChanging();
					this._idPessoa = value;
					this.SendPropertyChanged("idPessoa");
					this.OnidPessoaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nome", DbType="NVarChar(300) NOT NULL", CanBeNull=false)]
		public string nome
		{
			get
			{
				return this._nome;
			}
			set
			{
				if ((this._nome != value))
				{
					this.OnnomeChanging(value);
					this.SendPropertyChanging();
					this._nome = value;
					this.SendPropertyChanged("nome");
					this.OnnomeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_telefone", DbType="NChar(20) NOT NULL", CanBeNull=false)]
		public string telefone
		{
			get
			{
				return this._telefone;
			}
			set
			{
				if ((this._telefone != value))
				{
					this.OntelefoneChanging(value);
					this.SendPropertyChanging();
					this._telefone = value;
					this.SendPropertyChanged("telefone");
					this.OntelefoneChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Cidades")]
	public partial class Cidades : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _IdCidade;
		
		private string _descricao;
		
		private string _sigla;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdCidadeChanging(int value);
    partial void OnIdCidadeChanged();
    partial void OndescricaoChanging(string value);
    partial void OndescricaoChanged();
    partial void OnsiglaChanging(string value);
    partial void OnsiglaChanged();
    #endregion
		
		public Cidades()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IdCidade", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int IdCidade
		{
			get
			{
				return this._IdCidade;
			}
			set
			{
				if ((this._IdCidade != value))
				{
					this.OnIdCidadeChanging(value);
					this.SendPropertyChanging();
					this._IdCidade = value;
					this.SendPropertyChanged("IdCidade");
					this.OnIdCidadeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_descricao", DbType="VarChar(350)")]
		public string descricao
		{
			get
			{
				return this._descricao;
			}
			set
			{
				if ((this._descricao != value))
				{
					this.OndescricaoChanging(value);
					this.SendPropertyChanging();
					this._descricao = value;
					this.SendPropertyChanged("descricao");
					this.OndescricaoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_sigla", DbType="NChar(3)")]
		public string sigla
		{
			get
			{
				return this._sigla;
			}
			set
			{
				if ((this._sigla != value))
				{
					this.OnsiglaChanging(value);
					this.SendPropertyChanging();
					this._sigla = value;
					this.SendPropertyChanged("sigla");
					this.OnsiglaChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
