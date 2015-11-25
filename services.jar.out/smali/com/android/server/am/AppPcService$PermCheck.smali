.class Lcom/android/server/am/AppPcService$PermCheck;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermCheck"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lenovo.lsf.bwprovider"

.field private static final CONTENT_PERM_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_USER_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

.field private static final FIELD_NAME_MODIFY:Ljava/lang/String; = "modify"

.field private static final FIELD_NAME_PACKAGE:Ljava/lang/String; = "package"

.field private static final FIELD_NAME_PERMISSION:Ljava/lang/String; = "permission"

.field private static final FIELD_NAME_PERMISSION_STATUS:Ljava/lang/String; = "permission_status"

.field public static final NOTIFYTYPE_ALLOW_ALWAYS:I = 0x1

.field public static final NOTIFYTYPE_ASKED_ALWAYS:I = 0x0

.field public static final NOTIFYTYPE_REFUSE_ALWAYS:I = -0x1

.field private static final TABLE_PERMISSION_SYS:Ljava/lang/String; = "app_permissions_sys_settings"

.field private static final TABLE_PERMISSION_USER:Ljava/lang/String; = "app_permissions_user_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_SYS:Ljava/lang/String; = "white_list_sys_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_USER:Ljava/lang/String; = "white_list_user_settings"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastCheckResultLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPermissionLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPermissionListsSyncThread:Ljava/lang/Thread;

.field private mSystemWhiteLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemWhiteListsSyncThread:Ljava/lang/Thread;

.field private mUidPackageNameMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPermissionLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPermissionListsSyncThread:Ljava/lang/Thread;

.field private mUserWhiteLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWhiteListsSyncThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1370
    const-string v0, "content://com.lenovo.lsf.bwprovider/app_permissions_user_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    .line 1375
    const-string v0, "content://com.lenovo.lsf.bwprovider/app_permissions_sys_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    .line 1380
    const-string v0, "content://com.lenovo.lsf.bwprovider/white_list_sys_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    .line 1386
    const-string v0, "content://com.lenovo.lsf.bwprovider/white_list_user_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    const-string v0, "Security_PermCheck"

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->TAG:Ljava/lang/String;

    .line 1411
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteLists:Ljava/util/HashSet;

    .line 1415
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteLists:Ljava/util/HashSet;

    .line 1419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;

    .line 1423
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    .line 1425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;

    .line 1427
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mLastCheckResultLists:Ljava/util/HashMap;

    .line 1430
    iput-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    .line 1431
    iput-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    .line 1432
    iput-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    .line 1433
    iput-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    .line 1434
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mHandler:Landroid/os/Handler;

    .line 1437
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    .line 1438
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncSystemWhiteLists()V

    .line 1439
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncUserWhiteLists()V

    .line 1440
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncSystemPermissionLists()V

    .line 1441
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncUserPermissionLists()V

    .line 1443
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/AppPcService$PermCheck$1;

    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppPcService$PermCheck$1;-><init>(Lcom/android/server/am/AppPcService$PermCheck;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1451
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/AppPcService$PermCheck$2;

    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppPcService$PermCheck$2;-><init>(Lcom/android/server/am/AppPcService$PermCheck;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1459
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/AppPcService$PermCheck$3;

    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppPcService$PermCheck$3;-><init>(Lcom/android/server/am/AppPcService$PermCheck;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1467
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/AppPcService$PermCheck$4;

    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppPcService$PermCheck$4;-><init>(Lcom/android/server/am/AppPcService$PermCheck;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1475
    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/am/AppPcService$PermCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncSystemWhiteLists()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/am/AppPcService$PermCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncUserWhiteLists()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/am/AppPcService$PermCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncSystemPermissionLists()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/am/AppPcService$PermCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncUserPermissionLists()V

    return-void
.end method

.method static synthetic access$3600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1347
    sget-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/am/AppPcService$PermCheck;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteLists:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$4000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1347
    sget-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteLists:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$4300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1347
    sget-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$4600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1347
    sget-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1347
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermCheck;->getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private changePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "notifyType"    # I

    .prologue
    .line 1695
    invoke-static {p1, p2}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1702
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    monitor-enter v4

    .line 1703
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1704
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1708
    .local v2, "newValues":Landroid/content/ContentValues;
    const-string v3, "permission_status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1710
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    const-string v5, "package=? AND permission=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1716
    :goto_0
    return-void

    .line 1706
    .end local v2    # "newValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1712
    .restart local v2    # "newValues":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1713
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Security_PermCheck"

    const-string v4, "changePermission error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packagename"    # Ljava/lang/String;
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPermissionByCode(I)Ljava/util/ArrayList;
    .locals 4
    .param p0, "permIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1723
    # getter for: Lcom/android/server/am/AppPcService;->sPermissionDbCode:[I
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$5000()[I

    move-result-object v3

    aget v0, v3, p0

    .line 1724
    .local v0, "code":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1725
    .local v2, "permList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Lcom/android/server/am/AppPcService;->sPermissionDbCode:[I
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$5000()[I

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1726
    # getter for: Lcom/android/server/am/AppPcService;->sPermissionDbCode:[I
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$5000()[I

    move-result-object v3

    aget v3, v3, v1

    if-ne v3, v0, :cond_0

    .line 1727
    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1730
    :cond_1
    return-object v2
.end method

.method private getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1651
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1652
    .local v2, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1654
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1658
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1658
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private startSyncSystemPermissionLists()V
    .locals 2

    .prologue
    .line 1556
    const-string v0, "Security_PermCheck"

    const-string v1, "startSyncSystemPermissionLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1560
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcService$PermCheck$7;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcService$PermCheck$7;-><init>(Lcom/android/server/am/AppPcService$PermCheck;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    .line 1598
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1599
    return-void
.end method

.method private startSyncSystemWhiteLists()V
    .locals 2

    .prologue
    .line 1477
    const-string v0, "Security_PermCheck"

    const-string v1, "startSyncSystemWhiteLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1481
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcService$PermCheck$5;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcService$PermCheck$5;-><init>(Lcom/android/server/am/AppPcService$PermCheck;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    .line 1516
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1517
    return-void
.end method

.method private startSyncUserPermissionLists()V
    .locals 2

    .prologue
    .line 1601
    const-string v0, "Security_PermCheck"

    const-string v1, "startSyncUserPermissionLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1605
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcService$PermCheck$8;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcService$PermCheck$8;-><init>(Lcom/android/server/am/AppPcService$PermCheck;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    .line 1646
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1647
    return-void
.end method

.method private startSyncUserWhiteLists()V
    .locals 2

    .prologue
    .line 1519
    const-string v0, "Security_PermCheck"

    const-string v1, "startSyncUserWhiteLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1523
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcService$PermCheck$6;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcService$PermCheck$6;-><init>(Lcom/android/server/am/AppPcService$PermCheck;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    .line 1553
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1554
    return-void
.end method


# virtual methods
.method public changePermissionByCode(Ljava/lang/String;II)V
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "notifyType"    # I

    .prologue
    .line 1682
    invoke-static {p2}, Lcom/android/server/am/AppPcService$PermCheck;->getPermissionByCode(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1683
    .local v2, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1684
    .local v1, "perm":Ljava/lang/String;
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/am/AppPcService$PermCheck;->changePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1686
    .end local v1    # "perm":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getNotifyType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "perm"    # Ljava/lang/String;

    .prologue
    .line 1737
    const/4 v2, 0x0

    .line 1738
    .local v2, "result":Ljava/lang/Integer;
    invoke-static {p1, p2}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1740
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;

    monitor-enter v4

    .line 1741
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 1742
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1744
    if-nez v2, :cond_0

    .line 1745
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    monitor-enter v4

    .line 1746
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 1747
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1750
    :cond_0
    if-nez v2, :cond_1

    .line 1751
    const-string v3, "Security_PermCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNotifyType key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1767
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 1742
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1747
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public inWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 1664
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteLists:Ljava/util/HashSet;

    monitor-enter v1

    .line 1665
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1666
    const/4 v0, 0x1

    monitor-exit v1

    .line 1670
    :goto_0
    return v0

    .line 1668
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1669
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteLists:Ljava/util/HashSet;

    monitor-enter v1

    .line 1670
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 1671
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1668
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public saveLastCheckResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "notifyType"    # I

    .prologue
    .line 1675
    invoke-static {p1, p2}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1676
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermCheck;->mLastCheckResultLists:Ljava/util/HashMap;

    monitor-enter v2

    .line 1677
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mLastCheckResultLists:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;

    invoke-direct {v3, p3}, Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;-><init>(I)V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    monitor-exit v2

    .line 1679
    return-void

    .line 1678
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
