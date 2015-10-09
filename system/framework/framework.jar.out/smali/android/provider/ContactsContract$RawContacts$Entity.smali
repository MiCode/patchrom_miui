.class public final Landroid/provider/ContactsContract$RawContacts$Entity;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$DataColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entity"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "entity"

.field public static final DATA_ID:Ljava/lang/String; = "data_id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2791
    return-void
.end method
