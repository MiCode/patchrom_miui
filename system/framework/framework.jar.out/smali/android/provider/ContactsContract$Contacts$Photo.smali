.class public final Landroid/provider/ContactsContract$Contacts$Photo;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Photo"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "photo"

.field public static final DISPLAY_PHOTO:Ljava/lang/String; = "display_photo"

.field public static final PHOTO:Ljava/lang/String; = "data15"

.field public static final PHOTO_FILE_ID:Ljava/lang/String; = "data14"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
