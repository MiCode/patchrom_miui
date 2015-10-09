.class Landroid/content/SyncAdaptersCache$MySerializer;
.super Ljava/lang/Object;
.source "SyncAdaptersCache.java"

# interfaces
.implements Landroid/content/pm/XmlSerializerAndParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncAdaptersCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/XmlSerializerAndParser",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/SyncAdapterType;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 87
    const-string v2, "authority"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "authority":Ljava/lang/String;
    const-string v2, "accountType"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "accountType":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/content/SyncAdaptersCache$MySerializer;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method

.method public writeAsXml(Landroid/content/SyncAdapterType;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "item"    # Landroid/content/SyncAdapterType;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    const-string v0, "authority"

    iget-object v1, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    const-string v0, "accountType"

    iget-object v1, p1, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    return-void
.end method

.method public bridge synthetic writeAsXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    check-cast p1, Landroid/content/SyncAdapterType;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/SyncAdaptersCache$MySerializer;->writeAsXml(Landroid/content/SyncAdapterType;Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method
