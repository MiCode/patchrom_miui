.class Landroid/content/ContentProviderClient$NotRespondingRunnable;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotRespondingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentProviderClient;


# direct methods
.method private constructor <init>(Landroid/content/ContentProviderClient;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/ContentProviderClient;
    .param p2, "x1"    # Landroid/content/ContentProviderClient$1;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 456
    const-string v0, "ContentProviderClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected provider not responding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    # getter for: Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;
    invoke-static {v2}, Landroid/content/ContentProviderClient;->access$100(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    # getter for: Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/content/ContentProviderClient;->access$200(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    # getter for: Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;
    invoke-static {v1}, Landroid/content/ContentProviderClient;->access$100(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->appNotRespondingViaProvider(Landroid/content/IContentProvider;)V

    .line 458
    return-void
.end method
