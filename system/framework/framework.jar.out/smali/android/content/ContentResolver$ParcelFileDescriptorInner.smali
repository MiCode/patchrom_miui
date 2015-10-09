.class final Landroid/content/ContentResolver$ParcelFileDescriptorInner;
.super Landroid/os/ParcelFileDescriptor;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ParcelFileDescriptorInner"
.end annotation


# instance fields
.field private final mContentProvider:Landroid/content/IContentProvider;

.field private mProviderReleased:Z

.field final synthetic this$0:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V
    .locals 0
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 2292
    iput-object p1, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->this$0:Landroid/content/ContentResolver;

    .line 2293
    invoke-direct {p0, p2}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2294
    iput-object p3, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mContentProvider:Landroid/content/IContentProvider;

    .line 2295
    return-void
.end method


# virtual methods
.method public releaseResources()V
    .locals 2

    .prologue
    .line 2299
    iget-boolean v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mProviderReleased:Z

    if-nez v0, :cond_0

    .line 2300
    iget-object v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->this$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2301
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mProviderReleased:Z

    .line 2303
    :cond_0
    return-void
.end method
