﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Il codice è stato generato da uno strumento.
//     Versione runtime:4.0.30319.42000
//
//     Le modifiche apportate a questo file possono provocare un comportamento non corretto e andranno perse se
//     il codice viene rigenerato.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="aspnet-santuarioazureweb-20141117142239")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Definizioni metodo Extensibility
  partial void OnCreated();
  partial void InsertFedPreg(FedPreg instance);
  partial void UpdateFedPreg(FedPreg instance);
  partial void DeleteFedPreg(FedPreg instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["aspnet_santuarioazureweb_20141117142239ConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<FedPreg> FedPreg
	{
		get
		{
			return this.GetTable<FedPreg>();
		}
	}
	
	public System.Data.Linq.Table<Users> Users
	{
		get
		{
			return this.GetTable<Users>();
		}
	}
	
	public System.Data.Linq.Table<Class1> Class1
	{
		get
		{
			return this.GetTable<Class1>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.FedPreg")]
public partial class FedPreg : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private string _Nome;
	
	private string _Citta;
	
	private string _Preghiera;
	
	private System.Nullable<System.DateTime> _Data;
	
	private string _Utente;
	
	private System.Nullable<bool> _Pubblica;
	
    #region Definizioni metodo Extensibility
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnNomeChanging(string value);
    partial void OnNomeChanged();
    partial void OnCittaChanging(string value);
    partial void OnCittaChanged();
    partial void OnPreghieraChanging(string value);
    partial void OnPreghieraChanged();
    partial void OnDataChanging(System.Nullable<System.DateTime> value);
    partial void OnDataChanged();
    partial void OnUtenteChanging(string value);
    partial void OnUtenteChanged();
    partial void OnPubblicaChanging(System.Nullable<bool> value);
    partial void OnPubblicaChanged();
    #endregion
	
	public FedPreg()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int Id
	{
		get
		{
			return this._Id;
		}
		set
		{
			if ((this._Id != value))
			{
				this.OnIdChanging(value);
				this.SendPropertyChanging();
				this._Id = value;
				this.SendPropertyChanged("Id");
				this.OnIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Nome", DbType="VarChar(50)")]
	public string Nome
	{
		get
		{
			return this._Nome;
		}
		set
		{
			if ((this._Nome != value))
			{
				this.OnNomeChanging(value);
				this.SendPropertyChanging();
				this._Nome = value;
				this.SendPropertyChanged("Nome");
				this.OnNomeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Citta", DbType="VarChar(50)")]
	public string Citta
	{
		get
		{
			return this._Citta;
		}
		set
		{
			if ((this._Citta != value))
			{
				this.OnCittaChanging(value);
				this.SendPropertyChanging();
				this._Citta = value;
				this.SendPropertyChanged("Citta");
				this.OnCittaChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Preghiera", DbType="Text", UpdateCheck=UpdateCheck.Never)]
	public string Preghiera
	{
		get
		{
			return this._Preghiera;
		}
		set
		{
			if ((this._Preghiera != value))
			{
				this.OnPreghieraChanging(value);
				this.SendPropertyChanging();
				this._Preghiera = value;
				this.SendPropertyChanged("Preghiera");
				this.OnPreghieraChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Data", DbType="Date")]
	public System.Nullable<System.DateTime> Data
	{
		get
		{
			return this._Data;
		}
		set
		{
			if ((this._Data != value))
			{
				this.OnDataChanging(value);
				this.SendPropertyChanging();
				this._Data = value;
				this.SendPropertyChanged("Data");
				this.OnDataChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Utente", DbType="VarChar(50)")]
	public string Utente
	{
		get
		{
			return this._Utente;
		}
		set
		{
			if ((this._Utente != value))
			{
				this.OnUtenteChanging(value);
				this.SendPropertyChanging();
				this._Utente = value;
				this.SendPropertyChanged("Utente");
				this.OnUtenteChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Pubblica", DbType="Bit")]
	public System.Nullable<bool> Pubblica
	{
		get
		{
			return this._Pubblica;
		}
		set
		{
			if ((this._Pubblica != value))
			{
				this.OnPubblicaChanging(value);
				this.SendPropertyChanging();
				this._Pubblica = value;
				this.SendPropertyChanged("Pubblica");
				this.OnPubblicaChanged();
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

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Users")]
public partial class Users
{
	
	private System.Guid _ApplicationId;
	
	protected System.Guid _UserId;
	
	private string _UserName;
	
	private bool _IsAnonymous;
	
	private System.DateTime _LastActivityDate;
	
	public Users()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ApplicationId", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid ApplicationId
	{
		get
		{
			return this._ApplicationId;
		}
		set
		{
			if ((this._ApplicationId != value))
			{
				this._ApplicationId = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserId", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid UserId
	{
		get
		{
			return this._UserId;
		}
		set
		{
			if ((this._UserId != value))
			{
				this._UserId = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserName", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string UserName
	{
		get
		{
			return this._UserName;
		}
		set
		{
			if ((this._UserName != value))
			{
				this._UserName = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsAnonymous", DbType="Bit NOT NULL")]
	public bool IsAnonymous
	{
		get
		{
			return this._IsAnonymous;
		}
		set
		{
			if ((this._IsAnonymous != value))
			{
				this._IsAnonymous = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LastActivityDate", DbType="DateTime NOT NULL")]
	public System.DateTime LastActivityDate
	{
		get
		{
			return this._LastActivityDate;
		}
		set
		{
			if ((this._LastActivityDate != value))
			{
				this._LastActivityDate = value;
			}
		}
	}
}

public partial class Memberships : Users
{
	
	private System.Guid _ApplicationId;
	
	private System.Guid _UserId;
	
	private string _Password;
	
	private int _PasswordFormat;
	
	private string _PasswordSalt;
	
	private string _Email;
	
	private string _PasswordQuestion;
	
	private string _PasswordAnswer;
	
	private bool _IsApproved;
	
	private bool _IsLockedOut;
	
	private System.DateTime _CreateDate;
	
	private System.DateTime _LastLoginDate;
	
	private System.DateTime _LastPasswordChangedDate;
	
	private System.DateTime _LastLockoutDate;
	
	private int _FailedPasswordAttemptCount;
	
	private System.DateTime _FailedPasswordAttemptWindowStart;
	
	private int _FailedPasswordAnswerAttemptCount;
	
	private System.DateTime _FailedPasswordAnswerAttemptWindowsStart;
	
	private string _Comment;
	
	public Memberships()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ApplicationId", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid ApplicationId
	{
		get
		{
			return this._ApplicationId;
		}
		set
		{
			if ((this._ApplicationId != value))
			{
				this._ApplicationId = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserId", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid UserId
	{
		get
		{
			return this._UserId;
		}
		set
		{
			if ((this._UserId != value))
			{
				this._UserId = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Password", DbType="NVarChar(128) NOT NULL", CanBeNull=false)]
	public string Password
	{
		get
		{
			return this._Password;
		}
		set
		{
			if ((this._Password != value))
			{
				this._Password = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PasswordFormat", DbType="Int NOT NULL")]
	public int PasswordFormat
	{
		get
		{
			return this._PasswordFormat;
		}
		set
		{
			if ((this._PasswordFormat != value))
			{
				this._PasswordFormat = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PasswordSalt", DbType="NVarChar(128) NOT NULL", CanBeNull=false)]
	public string PasswordSalt
	{
		get
		{
			return this._PasswordSalt;
		}
		set
		{
			if ((this._PasswordSalt != value))
			{
				this._PasswordSalt = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="NVarChar(256)")]
	public string Email
	{
		get
		{
			return this._Email;
		}
		set
		{
			if ((this._Email != value))
			{
				this._Email = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PasswordQuestion", DbType="NVarChar(256)")]
	public string PasswordQuestion
	{
		get
		{
			return this._PasswordQuestion;
		}
		set
		{
			if ((this._PasswordQuestion != value))
			{
				this._PasswordQuestion = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PasswordAnswer", DbType="NVarChar(128)")]
	public string PasswordAnswer
	{
		get
		{
			return this._PasswordAnswer;
		}
		set
		{
			if ((this._PasswordAnswer != value))
			{
				this._PasswordAnswer = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsApproved", DbType="Bit NOT NULL")]
	public bool IsApproved
	{
		get
		{
			return this._IsApproved;
		}
		set
		{
			if ((this._IsApproved != value))
			{
				this._IsApproved = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsLockedOut", DbType="Bit NOT NULL")]
	public bool IsLockedOut
	{
		get
		{
			return this._IsLockedOut;
		}
		set
		{
			if ((this._IsLockedOut != value))
			{
				this._IsLockedOut = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CreateDate", DbType="DateTime NOT NULL")]
	public System.DateTime CreateDate
	{
		get
		{
			return this._CreateDate;
		}
		set
		{
			if ((this._CreateDate != value))
			{
				this._CreateDate = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LastLoginDate", DbType="DateTime NOT NULL")]
	public System.DateTime LastLoginDate
	{
		get
		{
			return this._LastLoginDate;
		}
		set
		{
			if ((this._LastLoginDate != value))
			{
				this._LastLoginDate = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LastPasswordChangedDate", DbType="DateTime NOT NULL")]
	public System.DateTime LastPasswordChangedDate
	{
		get
		{
			return this._LastPasswordChangedDate;
		}
		set
		{
			if ((this._LastPasswordChangedDate != value))
			{
				this._LastPasswordChangedDate = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LastLockoutDate", DbType="DateTime NOT NULL")]
	public System.DateTime LastLockoutDate
	{
		get
		{
			return this._LastLockoutDate;
		}
		set
		{
			if ((this._LastLockoutDate != value))
			{
				this._LastLockoutDate = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FailedPasswordAttemptCount", DbType="Int NOT NULL")]
	public int FailedPasswordAttemptCount
	{
		get
		{
			return this._FailedPasswordAttemptCount;
		}
		set
		{
			if ((this._FailedPasswordAttemptCount != value))
			{
				this._FailedPasswordAttemptCount = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FailedPasswordAttemptWindowStart", DbType="DateTime NOT NULL")]
	public System.DateTime FailedPasswordAttemptWindowStart
	{
		get
		{
			return this._FailedPasswordAttemptWindowStart;
		}
		set
		{
			if ((this._FailedPasswordAttemptWindowStart != value))
			{
				this._FailedPasswordAttemptWindowStart = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FailedPasswordAnswerAttemptCount", DbType="Int NOT NULL")]
	public int FailedPasswordAnswerAttemptCount
	{
		get
		{
			return this._FailedPasswordAnswerAttemptCount;
		}
		set
		{
			if ((this._FailedPasswordAnswerAttemptCount != value))
			{
				this._FailedPasswordAnswerAttemptCount = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FailedPasswordAnswerAttemptWindowsStart", DbType="DateTime NOT NULL")]
	public System.DateTime FailedPasswordAnswerAttemptWindowsStart
	{
		get
		{
			return this._FailedPasswordAnswerAttemptWindowsStart;
		}
		set
		{
			if ((this._FailedPasswordAnswerAttemptWindowsStart != value))
			{
				this._FailedPasswordAnswerAttemptWindowsStart = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Comment", DbType="NVarChar(256)")]
	public string Comment
	{
		get
		{
			return this._Comment;
		}
		set
		{
			if ((this._Comment != value))
			{
				this._Comment = value;
			}
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="")]
public partial class Class1
{
	
	private string _Property1;
	
	public Class1()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Property1", CanBeNull=false)]
	public string Property1
	{
		get
		{
			return this._Property1;
		}
		set
		{
			if ((this._Property1 != value))
			{
				this._Property1 = value;
			}
		}
	}
}
#pragma warning restore 1591
