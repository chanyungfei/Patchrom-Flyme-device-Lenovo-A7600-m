.class Lcom/android/server/display/WifiDisplayController$33;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 3795
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 3799
    const-string v0, "WifiDisplayController"

    const-string v1, "[Exclude Dialog] onCancel(): keep previous Wi-Fi P2p connection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->chooseNo_WifiDirectExcludeDialog()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$10700(Lcom/android/server/display/WifiDisplayController;)V

    .line 3802
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$10602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 3803
    return-void
.end method
