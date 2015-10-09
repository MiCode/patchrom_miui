.class public Landroid/content/Entity$NamedContentValues;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedContentValues"
.end annotation


# instance fields
.field public final uri:Landroid/net/Uri;

.field public final values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 60
    iput-object p2, p0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 61
    return-void
.end method
