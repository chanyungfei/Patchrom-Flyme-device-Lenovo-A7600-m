.class Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;->access$000(Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;->access$100(Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 94
    return-void
.end method
