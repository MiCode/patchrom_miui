.class public Landroid/provider/UserDictionary;
.super Ljava/lang/Object;
.source "UserDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/UserDictionary$Words;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "user_dictionary"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final FREQUENCY_MAX:I = 0xff

.field private static final FREQUENCY_MIN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "content://user_dictionary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/UserDictionary;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method
