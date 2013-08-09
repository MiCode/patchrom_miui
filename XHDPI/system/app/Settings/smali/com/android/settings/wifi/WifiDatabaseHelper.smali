.class public Lcom/android/settings/wifi/WifiDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiDatabaseHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 14
    const-string v0, "wifi_settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    return-void
.end method

.method private createShareTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 83
    const-string v0, "CREATE TABLE wifi_share(_id INTEGER PRIMARY KEY AUTOINCREMENT,uuid TEXT ,marker BIGINT DEFAULT 0,longitude TEXT,latitude TEXT,deleted INTEGER DEFAULT 0,sync_state INTEGER DEFAULT 0,share_state INTEGER DEFAULT 0,share_count INTEGER DEFAULT 0,share_connect_state INTEGER DEFAULT 0,share_feedback INTEGER DEFAULT 0,share_upate_time INTEGER DEFAULT 0,account TEXT,ssid TEXT,bssid TEXT,psk TEXT,wepkey0 TEXT,wepkey1 TEXT,wepkey2 TEXT,wepkey3 TEXT,wep_tx_keyidx INTEGER,priority INTEGER,scan_ssid INTEGER,adhoc INTEGER,keyMgmt TEXT,proto TEXT,authAlg TEXT,pairwise TEXT,groupCipher TEXT,eap TEXT,phase2 TEXT,identity TEXT,anonymousIdentity TEXT,password TEXT,clientCert TEXT,privateKey TEXT,caCert TEXT,clientCertFile TEXT,privateKeyFile TEXT,caCertFile TEXT)"

    .line 126
    .local v0, createTableSql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 31
    const-string v0, "CREATE TABLE wifi(_id INTEGER PRIMARY KEY AUTOINCREMENT,uuid TEXT ,marker INTEGER DEFAULT 0,longitude TEXT,latitude TEXT,deleted INTEGER DEFAULT 0,sync_state INTEGER DEFAULT 0,share_state INTEGER DEFAULT 0,account TEXT,ssid TEXT,bssid TEXT,psk TEXT,wepkey0 TEXT,wepkey1 TEXT,wepkey2 TEXT,wepkey3 TEXT,wep_tx_keyidx INTEGER,priority INTEGER,scan_ssid INTEGER,adhoc INTEGER,keyMgmt TEXT,proto TEXT,authAlg TEXT,pairwise TEXT,groupCipher TEXT,eap TEXT,phase2 TEXT,identity TEXT,anonymousIdentity TEXT,password TEXT,clientCert TEXT,privateKey TEXT,caCert TEXT,clientCertFile TEXT,privateKeyFile TEXT,caCertFile TEXT)"

    .line 70
    .local v0, createTableSql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "CREATE TABLE wifi_sync(_id INTEGER PRIMARY KEY AUTOINCREMENT,account_name TEXT NOT NULL,marker INTEGER DEFAULT 0)"

    .line 78
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDatabaseHelper;->createShareTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 20
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 24
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 25
    const-string v0, "ALTER TABLE wifi ADD COLUMN share_state INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDatabaseHelper;->createShareTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 28
    :cond_0
    return-void
.end method
