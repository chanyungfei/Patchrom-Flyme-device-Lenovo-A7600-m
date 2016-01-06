.class public Lcom/lenovo/settings/deviceinfo/MemoryExts;
.super Ljava/lang/Object;
.source "MemoryExts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    }
.end annotation


# static fields
.field private static final ACTION_DYNAMIC_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final APP_INSTALL_AUTO_ID:I = 0x0

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_SD0_ASK:I = 0x4

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_SD1_ASK:I = 0x5

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_UNKNOWN:I = 0x6

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/sdcard1"

.field private static final MEMORY_SD0_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MEMORY_SD0_EMMC_MNT_FLAG_ICS:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MEMORY_SD1_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard1"

.field private static final MEMORY_SD1_EMMC_MNT_FLAG_ICS:Ljava/lang/String; = "/storage/sdcard1"

.field private static final ORDER_PHONE_STORAGE:I = -0x3

.field private static final ORDER_SD_CARD:I = -0x2

.field private static final ORDER_USB_OTG:I = -0x1

.field private static final SD_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MemorySettings"

.field private static final USB_CABLE_CONNECTED_STATE:Ljava/lang/String; = "CONNECTED"

.field private static final USB_STORAGE_PATH:Ljava/lang/String; = "/storage/usbotg"

.field private static sClickedMountPoint:Ljava/lang/String;


# instance fields
.field private defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mActivity:Landroid/app/Activity;

.field private mApkInstallerEntrance:Landroid/preference/Preference;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

.field private mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

.field private mDefaultWritePath:Ljava/lang/String;

.field mDynSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mInstallLocationContainer:Landroid/preference/ListPreference;

.field private mInstallLocationEnabled:Z

.field private mIsAppInstallerInstalled:Z

.field private mIsCategoryAdded:Z

.field private mIsRemovableVolume:Z

.field private mIsUnmountingUsb:Z

.field private mResources:Landroid/content/res/Resources;

.field private mRootContainer:Landroid/preference/PreferenceScreen;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

.field private mWritePathAdded:[Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Landroid/os/storage/StorageManager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "storageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    .line 75
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    .line 76
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    .line 140
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$1;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 347
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$2;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$2;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 651
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    .line 112
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    .line 113
    iput-object p2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    .line 114
    iput-object p3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 115
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/settings/deviceinfo/MemoryExts;)[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateInstallLocation()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/settings/deviceinfo/MemoryExts;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->showDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/settings/deviceinfo/MemoryExts;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->setEmmcDefaultStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # Landroid/os/storage/IMountService;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/settings/deviceinfo/MemoryExts;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private doMount(Landroid/os/storage/IMountService;)V
    .locals 3
    .param p1, "mountService"    # Landroid/os/storage/IMountService;

    .prologue
    .line 597
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$6;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts$6;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/settings/deviceinfo/MemoryExts$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 613
    return-void
.end method

.method private filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 7
    .param p1, "volumes"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 517
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v2, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 520
    :try_start_0
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Volume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v6, p1, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , emulated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_1
    const-string v3, "not_present"

    iget-object v4, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 528
    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 531
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/storage/StorageVolume;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/storage/StorageVolume;

    return-object v3
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "selectedLocation":I
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedLocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getEmmcDefaultStorage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 728
    const-string v1, "persist.sys.emmc"

    const-string v2, "/storage/sdcard0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "path":Ljava/lang/String;
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmmcDefaultStorage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return-object v0
.end method

.method private initApkInstaller()V
    .locals 3

    .prologue
    .line 190
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    .line 191
    iget-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    if-eqz v1, :cond_0

    .line 192
    new-instance v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    .line 193
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    const v2, 0x7f0a04a9

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 194
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    const v2, 0x7f0a04aa

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 195
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.apkinstaller"

    const-string v2, "com.mediatek.apkinstaller.APKInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 203
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initDefaultWriteDisk()V
    .locals 19

    .prologue
    .line 228
    const-string v15, "MemorySettings"

    const-string v16, "initDefaultWriteDisk"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v15, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    const v16, 0x7f0a042f

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 241
    .local v1, "availableVolumes":[Landroid/os/storage/StorageVolume;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v14, "writePathList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "mPathList":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v13

    .line 249
    .local v13, "volumes":[Landroid/os/storage/StorageVolume;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v7, "mVolumePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v10, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v15, v6

    if-ge v3, v15, :cond_1

    .line 253
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "VolumePath: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v13, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ,state is: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v17, v0

    aget-object v18, v6, v3

    invoke-virtual/range {v17 .. v18}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ,emulated is: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v13, v3

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", path is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v13, v3

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v15, "not_present"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v16, v0

    aget-object v17, v6, v3

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 258
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v17, v6, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  is present, so add it. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    aget-object v15, v6, v3

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    aget-object v15, v13, v3

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 263
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 264
    .local v5, "length":I
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "default path group length = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_9

    .line 267
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 268
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    new-instance v9, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v15}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 269
    .local v9, "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v9, v15}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 271
    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v16, 0x7f0a032d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 273
    .local v11, "title":Ljava/lang/CharSequence;
    :goto_2
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 274
    .local v8, "path":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->getEmmcDefaultStorage()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "emmcPath":Ljava/lang/String;
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "emmcPath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v15, "/storage/sdcard0"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 277
    const-string v15, "MemorySettings"

    const-string v16, "initDefaultWriteDisk equal "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "path":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 279
    .restart local v8    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v15}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 299
    :cond_2
    :goto_3
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "title:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", path="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v9, v11}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {v9, v8}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setPath(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v9, v15}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 305
    const-string v15, "/storage/usbotg"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 306
    const-string v15, "MemorySettings"

    const-string v16, "This is OTG storage"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setEnabled(Z)V

    .line 309
    :cond_3
    const-string v15, "/storage/sdcard1"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->isDeviceEncrypted()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 310
    const-string v15, "MemorySettings"

    const-string v16, "The device is encrypted."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setEnabled(Z)V

    .line 314
    :cond_4
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 271
    .end local v2    # "emmcPath":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v16, 0x7f0a032e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto/16 :goto_2

    .line 281
    .restart local v2    # "emmcPath":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v11    # "title":Ljava/lang/CharSequence;
    :cond_6
    const-string v15, "MemorySettings"

    const-string v16, "initDefaultWriteDisk not equal "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v15, "/storage/sdcard0"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 283
    move-object v8, v2

    .line 284
    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 285
    .local v4, "idx":I
    const/4 v15, -0x1

    if-le v4, v15, :cond_2

    if-ge v4, v5, :cond_2

    .line 286
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 288
    .end local v4    # "idx":I
    :cond_7
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 289
    const-string v8, "/storage/sdcard0"

    .line 290
    const-string v15, "/storage/sdcard0"

    invoke-interface {v7, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 291
    .restart local v4    # "idx":I
    const/4 v15, -0x1

    if-le v4, v15, :cond_2

    if-ge v4, v5, :cond_2

    .line 292
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 295
    .end local v4    # "idx":I
    :cond_8
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "path":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 296
    .restart local v8    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v15}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 329
    .end local v2    # "emmcPath":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_9
    const/4 v15, 0x0

    new-array v15, v15, [Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-interface {v14, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 330
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    .line 331
    return-void
.end method

.method private initInstallLocation()V
    .locals 4

    .prologue
    const v3, 0x7f0a092c

    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "set_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    .line 126
    iget-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    .line 128
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0a092d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 130
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 132
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 133
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 138
    :cond_1
    return-void
.end method

.method private isDeviceEncrypted()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 334
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 336
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eq v4, v3, :cond_0

    .line 344
    :goto_0
    return v3

    .line 336
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v2

    .line 339
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "MemorySettings"

    const-string v5, "Error getting encryption state"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 340
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "MemorySettings"

    const-string v5, "Illegal state exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPkgInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 219
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 220
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    const/4 v2, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private setEmmcDefaultStorage(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 688
    const/4 v4, 0x0

    .line 689
    .local v4, "propPath":Ljava/lang/String;
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEmmcDefaultStorage:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v6, "/storage/sdcard0"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 691
    const-string v4, "/storage/sdcard0"

    .line 692
    const-string v6, "emmc"

    invoke-direct {p0, v6}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    .line 700
    :goto_0
    const-string v6, "persist.sys.emmc"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set  persist.sys.emmc ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v6, :cond_0

    .line 706
    const-string v6, "persist.sys.sd.defaultpath"

    const-string v7, "/storage/sdcard0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v6, "MemorySettings"

    const-string v7, "set  persist.sys.sd.defaultpath =/storage/sdcard0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 711
    .local v5, "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v5}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 712
    iput-object v5, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 710
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 693
    .end local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_2
    const-string v6, "/storage/sdcard1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 694
    const-string v4, "/storage/sdcard1"

    .line 695
    const-string v6, "sdcard"

    invoke-direct {p0, v6}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 697
    :cond_3
    const-string v4, "/storage/sdcard0"

    .line 698
    const-string v6, "emmc"

    invoke-direct {p0, v6}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    .restart local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_4
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_5

    .line 717
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_5

    .line 718
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    iput-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 719
    const-string v6, "/storage/sdcard0"

    iput-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    .line 723
    :cond_5
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 724
    .local v3, "pm":Landroid/os/PowerManager;
    if-eqz v3, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 725
    :cond_6
    return-void
.end method

.method private showDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0a05fa

    const/4 v0, 0x0

    const v4, 0x7f0a090a

    const v3, 0x1040014

    .line 377
    const-string v1, "flyrea"

    const-string v2, "wht createdDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    packed-switch p1, :pswitch_data_0

    .line 414
    :goto_0
    return-object v0

    .line 380
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/deviceinfo/MemoryExts$3;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$3;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a032f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/deviceinfo/MemoryExts$4;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$4;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0330

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 404
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/settings/deviceinfo/MemoryExts$5;

    invoke-direct {v1, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$5;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0331

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private switchExternalStorage(Z)Z
    .locals 8
    .param p1, "externalStorage"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 752
    const-string v2, "/cache/switch_sd"

    .line 753
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v5, "/cache/switch_sd"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    .local v1, "flagFile":Ljava/io/File;
    const-string v5, "MemorySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchExternalStorage externalStorage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    if-nez v1, :cond_0

    .line 756
    const-string v4, "MemorySettings"

    const-string v5, "switchExternalStorage error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_0
    return v3

    .line 759
    :cond_0
    if-eqz p1, :cond_1

    .line 760
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 761
    const-string v5, "MemorySettings"

    const-string v6, "/cache/switch_sd not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 764
    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MemorySettings"

    const-string v5, "switchExternalStorage exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 771
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 772
    const-string v3, "MemorySettings"

    const-string v5, "/cache/switch_sd  exist"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move v3, v4

    .line 774
    goto :goto_0

    :cond_2
    move v3, v4

    .line 777
    goto :goto_0
.end method

.method private updateAPKInstaller()V
    .locals 10

    .prologue
    .line 206
    iget-boolean v7, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    if-nez v7, :cond_0

    .line 215
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v1, 0x0

    .line 208
    .local v1, "flag":Z
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 209
    .local v4, "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "writePath":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "volumeState":Ljava/lang/String;
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    if-nez v1, :cond_1

    const-string v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 208
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 214
    .end local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v5    # "volumeState":Ljava/lang/String;
    .end local v6    # "writePath":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateDefaultWriteDisk()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 420
    const-string v9, "external_sd_path"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "externalStoragePath":Ljava/lang/String;
    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "externalStoragePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    array-length v9, v9

    if-ge v2, v9, :cond_3

    .line 424
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v9, v2

    .line 425
    .local v5, "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v5}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 426
    .local v8, "writePath":Ljava/lang/String;
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, "volumeState":Ljava/lang/String;
    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateDefaultWriteDisk Path "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " volume state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v9, "mounted"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 430
    const-string v9, "MemorySettings"

    const-string v10, "updateDefaultWriteDisk mount"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aget-boolean v9, v9, v2

    if-nez v9, :cond_0

    .line 432
    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateDefaultWriteDisk addPreference "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 434
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aput-boolean v13, v9, v2

    .line 423
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_1
    const-string v9, "MemorySettings"

    const-string v10, "updateDefaultWriteDisk not mount"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aget-boolean v9, v9, v2

    if-eqz v9, :cond_2

    .line 447
    const-string v9, "MemorySettings"

    const-string v10, "updateDefaultWriteDisk have add,it need to remove"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v5, v12}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 449
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 450
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aput-boolean v12, v9, v2

    goto :goto_1

    .line 452
    :cond_2
    const-string v9, "MemorySettings"

    const-string v10, "updateDefaultWriteDisk have not add"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 459
    .end local v5    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v6    # "volumeState":Ljava/lang/String;
    .end local v8    # "writePath":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v7

    .line 460
    .local v7, "writeDiskNum":I
    iget-boolean v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    if-eqz v9, :cond_5

    if-nez v7, :cond_5

    .line 461
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    iput-boolean v12, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    .line 474
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->getEmmcDefaultStorage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    .line 475
    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get default path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_8

    aget-object v5, v0, v3

    .line 477
    .restart local v5    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "volumeItemPreference.getPath=-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v5}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/storage/sdcard0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 479
    invoke-virtual {v5, v13}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 480
    iput-object v5, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 476
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 466
    .end local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_5
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v9}, Lcom/lenovo/settings/storage/StorageUtils;->isSupport_MULTI_STORAGE(Landroid/os/storage/StorageManager;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 467
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 468
    iput-boolean v12, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    goto :goto_2

    .line 469
    :cond_6
    iget-boolean v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    if-nez v9, :cond_4

    if-lez v7, :cond_4

    .line 470
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 471
    iput-boolean v13, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    goto :goto_2

    .line 482
    .restart local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_7
    invoke-virtual {v5, v12}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    goto :goto_4

    .line 485
    .end local v5    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_8
    return-void
.end method

.method private updateInstallLocation()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 160
    iget-boolean v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    if-nez v11, :cond_0

    .line 187
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 163
    .local v7, "volumePreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v7}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "writePath":Ljava/lang/String;
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v11, v9}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "volumeState":Ljava/lang/String;
    const-string v11, "shared"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 166
    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 167
    const-string v10, "MemorySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Volume state is MEDIA_SHARED, path "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    .end local v7    # "volumePreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v8    # "volumeState":Ljava/lang/String;
    .end local v9    # "writePath":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    .line 173
    .local v5, "primaryExternalStorage":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 174
    .local v6, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 176
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v11}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 180
    .end local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_3
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 181
    .local v2, "entries":[Ljava/lang/CharSequence;
    aput-object v5, v2, v10

    .line 182
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 185
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isExSdcardInserted()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move v1, v10

    .line 186
    .local v1, "enable":Z
    :cond_5
    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 173
    .end local v1    # "enable":Z
    .end local v2    # "entries":[Ljava/lang/CharSequence;
    .restart local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private writeSwitchProperty(Ljava/lang/String;)V
    .locals 6
    .param p1, "mLable"    # Ljava/lang/String;

    .prologue
    .line 743
    const-string v3, "persist.sys.switch_storage"

    const-string v4, "none,0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, "propertyValue":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, "split":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 746
    .local v0, "cid":Ljava/lang/String;
    const-string v3, "flyrea"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set the persist == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v3, "persist.sys.switch_storage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set persist.sys.switch_storage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void
.end method


# virtual methods
.method public getResourceId(II)I
    .locals 1
    .param p1, "usbResId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_0

    .end local p1    # "usbResId":I
    :goto_0
    return p1

    .restart local p1    # "usbResId":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 513
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public initMtkCategory()V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->initApkInstaller()V

    .line 489
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->initInstallLocation()V

    .line 490
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->initDefaultWriteDisk()V

    .line 491
    return-void
.end method

.method public isAddInternalCategory()Z
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x1

    return v0
.end method

.method public isAddPhysicalCategory(Landroid/os/storage/StorageVolume;)Z
    .locals 6
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 540
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    .line 542
    .local v2, "sm":Landroid/os/storage/StorageManager;
    invoke-static {v2}, Lcom/lenovo/settings/storage/StorageUtils;->isFuseOn(Landroid/os/storage/StorageManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 545
    .local v0, "isCategory":Z
    :goto_0
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAddPhysicalCategory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/storage/StorageUtils;->isOtgVolume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 549
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "otgState":Ljava/lang/String;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "otg volume path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 552
    const/4 v0, 0x0

    .line 555
    .end local v1    # "otgState":Ljava/lang/String;
    :cond_1
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAddPhysicalCategory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return v0

    .line 542
    .end local v0    # "isCategory":Z
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public isInUMSState()Z
    .locals 8

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 501
    .local v3, "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v3}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, "writePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, "volumeState":Ljava/lang/String;
    const-string v6, "shared"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 504
    const-string v6, "MemorySettings"

    const-string v7, "Current is UMS state, remove the unmount dialog"

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v6, 0x1

    .line 508
    .end local v3    # "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v4    # "volumeState":Ljava/lang/String;
    .end local v5    # "writePath":Ljava/lang/String;
    :goto_1
    return v6

    .line 500
    .restart local v3    # "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .restart local v4    # "volumeState":Ljava/lang/String;
    .restart local v5    # "writePath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    .end local v3    # "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v4    # "volumeState":Ljava/lang/String;
    .end local v5    # "writePath":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public mount(Landroid/os/storage/IMountService;)V
    .locals 3
    .param p1, "mountService"    # Landroid/os/storage/IMountService;

    .prologue
    .line 563
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/storage/sdcard1"

    sget-object v2, Lcom/lenovo/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsRemovableVolume:Z

    if-eqz v1, :cond_0

    .line 566
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V

    .line 567
    .local v0, "dialog":Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SwapAlert"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 571
    .end local v0    # "dialog":Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V

    goto :goto_0
.end method

.method public registerSdSwapReceiver(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p1, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;>;"
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mCategories:Ljava/util/ArrayList;

    .line 638
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 639
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.SD_SWAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 642
    .end local v0    # "mFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setUsbEntranceState(Landroid/hardware/usb/UsbManager;Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "usb"    # Landroid/view/MenuItem;

    .prologue
    .line 685
    return-void
.end method

.method public setVolumeParameter(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 1
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 630
    sput-object p1, Lcom/lenovo/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    .line 631
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsRemovableVolume:Z

    .line 632
    return-void
.end method

.method public unRegisterSdSwapReceiver()V
    .locals 2

    .prologue
    .line 646
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 649
    :cond_0
    return-void
.end method

.method public updateMtkCategory()V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateInstallLocation()V

    .line 495
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateAPKInstaller()V

    .line 496
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V

    .line 497
    return-void
.end method