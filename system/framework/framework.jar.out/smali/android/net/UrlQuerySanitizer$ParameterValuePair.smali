.class public Landroid/net/UrlQuerySanitizer$ParameterValuePair;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UrlQuerySanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterValuePair"
.end annotation


# instance fields
.field public mParameter:Ljava/lang/String;

.field public mValue:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/UrlQuerySanitizer;


# direct methods
.method public constructor <init>(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "parameter"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->this$0:Landroid/net/UrlQuerySanitizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    .line 78
    return-void
.end method
