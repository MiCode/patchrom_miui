.class public final Landroid/app/DownloadManager$ExtraDownloads;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtraDownloads"
.end annotation


# static fields
.field public static final COLUMN_APK_PACKGENAME:Ljava/lang/String; = "apk_package_name"

.field public static final COLUMN_APPOINT_NAME:Ljava/lang/String; = "appointname"

.field public static final COLUMN_DOWNLOADED_TIME:Ljava/lang/String; = "downloaded_time"

.field public static final COLUMN_DOWNLOADING_CURRENT_SPEED:Ljava/lang/String; = "downloading_current_speed"

.field public static final COLUMN_DOWNLOAD_SURPLUS_TIME:Ljava/lang/String; = "download_surplus_time"

.field public static final COLUMN_FILE_CREATE_TIME:Ljava/lang/String; = "file_create_time"

.field public static final COLUMN_IF_RANGE_ID:Ljava/lang/String; = "if_range_id"

.field public static final COLUMN_SUB_DIRECTORY:Ljava/lang/String; = "subdirectory"

.field public static final COLUMN_TASK_FOR_THUMBNAIL:Ljava/lang/String; = "download_task_thumbnail"

.field public static final COLUMN_XL_ACCELERATE_SPEED:Ljava/lang/String; = "xl_accelerate_speed"

.field public static final COLUMN_XL_TASK_OPEN_MARK:Ljava/lang/String; = "xl_task_open_mark"

.field public static final COLUMN_XL_VIP_CDN_URL:Ljava/lang/String; = "xl_vip_cdn_url"

.field public static final COLUMN_XL_VIP_STATUS:Ljava/lang/String; = "xl_vip_status"

.field public static final CONTROL_PAUSED_WITHOUT_WIFI:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
