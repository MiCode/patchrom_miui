.class public interface abstract Landroid/app/IApplicationThread;
.super Ljava/lang/Object;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final BACKUP_MODE_FULL:I = 0x1

.field public static final BACKUP_MODE_INCREMENTAL:I = 0x0

.field public static final BACKUP_MODE_RESTORE:I = 0x2

.field public static final BACKUP_MODE_RESTORE_FULL:I = 0x3

.field public static final BIND_APPLICATION_TRANSACTION:I = 0xd

.field public static final CLEAR_DNS_CACHE_TRANSACTION:I = 0x26

.field public static final DEBUG_OFF:I = 0x0

.field public static final DEBUG_ON:I = 0x1

.field public static final DEBUG_WAIT:I = 0x2

.field public static final DISPATCH_PACKAGE_BROADCAST_TRANSACTION:I = 0x22

.field public static final DUMP_ACTIVITY_TRANSACTION:I = 0x25

.field public static final DUMP_DB_INFO_TRANSACTION:I = 0x2e

.field public static final DUMP_GFX_INFO_TRANSACTION:I = 0x2c

.field public static final DUMP_HEAP_TRANSACTION:I = 0x24

.field public static final DUMP_MEM_INFO_TRANSACTION:I = 0x2b

.field public static final DUMP_PROVIDER_TRANSACTION:I = 0x2d

.field public static final DUMP_SERVICE_TRANSACTION:I = 0x16

.field public static final EXTERNAL_STORAGE_UNAVAILABLE:I = 0x1

.field public static final PACKAGE_REMOVED:I = 0x0

.field public static final PROCESS_IN_BACKGROUND_TRANSACTION:I = 0x13

.field public static final PROFILER_CONTROL_TRANSACTION:I = 0x1c

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS_TRANSACTION:I = 0x30

.field public static final REQUEST_THUMBNAIL_TRANSACTION:I = 0xf

.field public static final SCHEDULE_ACTIVITY_CONFIGURATION_CHANGED_TRANSACTION:I = 0x19

.field public static final SCHEDULE_BIND_SERVICE_TRANSACTION:I = 0x14

.field public static final SCHEDULE_CONFIGURATION_CHANGED_TRANSACTION:I = 0x10

.field public static final SCHEDULE_CRASH_TRANSACTION:I = 0x23

.field public static final SCHEDULE_CREATE_BACKUP_AGENT_TRANSACTION:I = 0x1e

.field public static final SCHEDULE_CREATE_SERVICE_TRANSACTION:I = 0xb

.field public static final SCHEDULE_DESTROY_BACKUP_AGENT_TRANSACTION:I = 0x1f

.field public static final SCHEDULE_EXIT_TRANSACTION:I = 0xe

.field public static final SCHEDULE_FINISH_ACTIVITY_TRANSACTION:I = 0x9

.field public static final SCHEDULE_INSTALL_PROVIDER_TRANSACTION:I = 0x33

.field public static final SCHEDULE_LAUNCH_ACTIVITY_TRANSACTION:I = 0x7

.field public static final SCHEDULE_LOW_MEMORY_TRANSACTION:I = 0x18

.field public static final SCHEDULE_NEW_INTENT_TRANSACTION:I = 0x8

.field public static final SCHEDULE_PAUSE_ACTIVITY_TRANSACTION:I = 0x1

.field public static final SCHEDULE_RECEIVER_TRANSACTION:I = 0xa

.field public static final SCHEDULE_REGISTERED_RECEIVER_TRANSACTION:I = 0x17

.field public static final SCHEDULE_RELAUNCH_ACTIVITY_TRANSACTION:I = 0x1a

.field public static final SCHEDULE_RESUME_ACTIVITY_TRANSACTION:I = 0x5

.field public static final SCHEDULE_SEND_RESULT_TRANSACTION:I = 0x6

.field public static final SCHEDULE_SERVICE_ARGS_TRANSACTION:I = 0x11

.field public static final SCHEDULE_SLEEPING_TRANSACTION:I = 0x1b

.field public static final SCHEDULE_STOP_ACTIVITY_TRANSACTION:I = 0x3

.field public static final SCHEDULE_STOP_SERVICE_TRANSACTION:I = 0xc

.field public static final SCHEDULE_SUICIDE_TRANSACTION:I = 0x21

.field public static final SCHEDULE_TRANSLUCENT_CONVERSION_COMPLETE_TRANSACTION:I = 0x31

.field public static final SCHEDULE_TRIM_MEMORY_TRANSACTION:I = 0x2a

.field public static final SCHEDULE_UNBIND_SERVICE_TRANSACTION:I = 0x15

.field public static final SCHEDULE_WINDOW_VISIBILITY_TRANSACTION:I = 0x4

.field public static final SET_CORE_SETTINGS_TRANSACTION:I = 0x28

.field public static final SET_HTTP_PROXY_TRANSACTION:I = 0x27

.field public static final SET_PROCESS_STATE_TRANSACTION:I = 0x32

.field public static final SET_SCHEDULING_GROUP_TRANSACTION:I = 0x1d

.field public static final UNSTABLE_PROVIDER_DIED_TRANSACTION:I = 0x2f

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO_TRANSACTION:I = 0x29

.field public static final UPDATE_TIME_ZONE_TRANSACTION:I = 0x12

.field public static final descriptor:Ljava/lang/String; = "android.app.IApplicationThread"


# virtual methods
.method public abstract bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract clearDnsCache()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZ[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract processInBackground()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestThumbnail(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleCrash(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleExit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;ILandroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleLowMemory()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleResumeActivity(Landroid/os/IBinder;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleSleeping(Landroid/os/IBinder;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleStopService(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleSuicide()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleTrimMemory(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCoreSettings(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setProcessState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSchedulingGroup(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unstableProviderDied(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateTimeZone()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
