.class abstract Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeathRecipient"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mMode:I

.field mTag:Ljava/lang/String;

.field mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 3
    .param p2, "mode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 1814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1815
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mTag:Ljava/lang/String;

    .line 1816
    iput p2, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mMode:I

    .line 1817
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 1818
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    .line 1820
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1824
    :goto_0
    return-void

    .line 1821
    :catch_0
    move-exception v0

    .line 1822
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method unlinkDeathRecipient()V
    .locals 2

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1828
    return-void
.end method
