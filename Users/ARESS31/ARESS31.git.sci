======================: FILES :======================
sci
├── certs
│   └── my-release-key.keystore
├── libs
│   ├── apktool_2.2.4.jar
│   ├── baksmali-2.2.1.jar
│   └── smali-2.2.1.jar
├── LICENSE
├── payloads
│   └── smali
│       ├── spyware
│       │   ├── model
│       │   │   ├── Contact.smali
│       │   │   ├── Position.smali
│       │   │   ├── SMS.smali
│       │   │   └── Zombie.smali
│       │   ├── receivers
│       │   │   ├── ExfiltrateContactR.smali
│       │   │   ├── ExfiltrateSMSR.smali
│       │   │   ├── ExfiltrateZombieR.smali
│       │   │   └── SendSMSR.smali
│       │   ├── services
│       │   │   ├── PropagateS$1.smali
│       │   │   ├── PropagateS.smali
│       │   │   ├── TrackerS$1.smali
│       │   │   └── TrackerS.smali
│       │   ├── Spyware.smali
│       │   └── utils
│       │       ├── Harvester.smali
│       │       ├── Parameter.smali
│       │       └── PostDataAT.smali
│       └── support
│           ├── annotation
│           │   ├── AnimatorRes.smali
│           │   ├── AnimRes.smali
│           │   ├── AnyRes.smali
│           │   ├── AnyThread.smali
│           │   ├── ArrayRes.smali
│           │   ├── AttrRes.smali
│           │   ├── BinderThread.smali
│           │   ├── BoolRes.smali
│           │   ├── CallSuper.smali
│           │   ├── CheckResult.smali
│           │   ├── ColorInt.smali
│           │   ├── ColorLong.smali
│           │   ├── ColorRes.smali
│           │   ├── DimenRes.smali
│           │   ├── Dimension.smali
│           │   ├── DrawableRes.smali
│           │   ├── FloatRange.smali
│           │   ├── FractionRes.smali
│           │   ├── HalfFloat.smali
│           │   ├── IdRes.smali
│           │   ├── IntDef.smali
│           │   ├── IntegerRes.smali
│           │   ├── InterpolatorRes.smali
│           │   ├── IntRange.smali
│           │   ├── Keep.smali
│           │   ├── LayoutRes.smali
│           │   ├── MainThread.smali
│           │   ├── MenuRes.smali
│           │   ├── NonNull.smali
│           │   ├── Nullable.smali
│           │   ├── PluralsRes.smali
│           │   ├── Px.smali
│           │   ├── RawRes.smali
│           │   ├── RequiresApi.smali
│           │   ├── RequiresPermission$Read.smali
│           │   ├── RequiresPermission$Write.smali
│           │   ├── RequiresPermission.smali
│           │   ├── RestrictTo$Scope.smali
│           │   ├── RestrictTo.smali
│           │   ├── Size.smali
│           │   ├── StringDef.smali
│           │   ├── StringRes.smali
│           │   ├── StyleableRes.smali
│           │   ├── StyleRes.smali
│           │   ├── TransitionRes.smali
│           │   ├── UiThread.smali
│           │   ├── VisibleForTesting.smali
│           │   ├── WorkerThread.smali
│           │   └── XmlRes.smali
│           ├── compat
│           │   ├── BuildConfig.smali
│           │   └── R.smali
│           ├── constraint
│           │   ├── BuildConfig.smali
│           │   ├── ConstraintLayout$LayoutParams.smali
│           │   ├── ConstraintLayout.smali
│           │   ├── ConstraintSet$1.smali
│           │   ├── ConstraintSet$Constraint.smali
│           │   ├── ConstraintSet.smali
│           │   ├── Guideline.smali
│           │   ├── R$attr.smali
│           │   ├── R$id.smali
│           │   ├── R$styleable.smali
│           │   ├── R.smali
│           │   └── solver
│           │       ├── ArrayLinkedVariables.smali
│           │       ├── ArrayRow.smali
│           │       ├── Cache.smali
│           │       ├── Goal.smali
│           │       ├── LinearSystem.smali
│           │       ├── Pools$Pool.smali
│           │       ├── Pools$SimplePool.smali
│           │       ├── Pools.smali
│           │       ├── SolverVariable$1.smali
│           │       ├── SolverVariable$Type.smali
│           │       ├── SolverVariable.smali
│           │       └── widgets
│           │           ├── ConstraintAnchor$1.smali
│           │           ├── ConstraintAnchor$ConnectionType.smali
│           │           ├── ConstraintAnchor$Strength.smali
│           │           ├── ConstraintAnchor$Type.smali
│           │           ├── ConstraintAnchor.smali
│           │           ├── ConstraintHorizontalLayout$ContentAlignment.smali
│           │           ├── ConstraintHorizontalLayout.smali
│           │           ├── ConstraintTableLayout$HorizontalSlice.smali
│           │           ├── ConstraintTableLayout$VerticalSlice.smali
│           │           ├── ConstraintTableLayout.smali
│           │           ├── ConstraintWidget$1.smali
│           │           ├── ConstraintWidget$ContentAlignment.smali
│           │           ├── ConstraintWidget$DimensionBehaviour.smali
│           │           ├── ConstraintWidgetContainer$2.smali
│           │           ├── ConstraintWidgetContainer.smali
│           │           ├── ConstraintWidget.smali
│           │           ├── Guideline$1.smali
│           │           ├── Guideline.smali
│           │           ├── Optimizer.smali
│           │           ├── Rectangle.smali
│           │           ├── Snapshot$Connection.smali
│           │           ├── Snapshot.smali
│           │           └── WidgetContainer.smali
│           ├── coreui
│           │   ├── BuildConfig.smali
│           │   └── R.smali
│           ├── coreutils
│           │   ├── BuildConfig.smali
│           │   └── R.smali
│           ├── fragment
│           │   ├── BuildConfig.smali
│           │   └── R.smali
│           ├── graphics
│           │   └── drawable
│           │       ├── AndroidResources.smali
│           │       ├── animated
│           │       │   ├── BuildConfig.smali
│           │       │   └── R.smali
│           │       ├── AnimatedVectorDrawableCompat$1.smali
│           │       ├── AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.smali
│           │       ├── AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState.smali
│           │       ├── AnimatedVectorDrawableCompat.smali
│           │       ├── BuildConfig.smali
│           │       ├── PathParser$ExtractFloatResult.smali
│           │       ├── PathParser$PathDataNode.smali
│           │       ├── PathParser.smali
│           │       ├── R.smali
│           │       ├── VectorDrawableCommon.smali
│           │       ├── VectorDrawableCompat$VClipPath.smali
│           │       ├── VectorDrawableCompat$VectorDrawableCompatState.smali
│           │       ├── VectorDrawableCompat$VectorDrawableDelegateState.smali
│           │       ├── VectorDrawableCompat$VFullPath.smali
│           │       ├── VectorDrawableCompat$VGroup.smali
│           │       ├── VectorDrawableCompat$VPathRenderer.smali
│           │       ├── VectorDrawableCompat$VPath.smali
│           │       └── VectorDrawableCompat.smali
│           ├── mediacompat
│           │   ├── BuildConfig.smali
│           │   └── R.smali
│           ├── v4
│           │   ├── accessibilityservice
│           │   │   ├── AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl.smali
│           │   │   ├── AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanImpl.smali
│           │   │   ├── AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2Impl.smali
│           │   │   ├── AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl.smali
│           │   │   ├── AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl.smali
│           │   │   ├── AccessibilityServiceInfoCompatIcs.smali
│           │   │   ├── AccessibilityServiceInfoCompatJellyBeanMr2.smali
│           │   │   ├── AccessibilityServiceInfoCompatJellyBean.smali
│           │   │   └── AccessibilityServiceInfoCompat.smali
│           │   ├── app
│           │   │   ├── ActionBarDrawerToggle$ActionBarDrawerToggleImplIcs.smali
│           │   │   ├── ActionBarDrawerToggle$ActionBarDrawerToggleImplJellybeanMR2.smali
│           │   │   ├── ActionBarDrawerToggle$ActionBarDrawerToggleImpl.smali
│           │   │   ├── ActionBarDrawerToggle$DelegateProvider.smali
│           │   │   ├── ActionBarDrawerToggle$Delegate.smali
│           │   │   ├── ActionBarDrawerToggle$SlideDrawable.smali
│           │   │   ├── ActionBarDrawerToggleIcs$SetIndicatorInfo.smali
│           │   │   ├── ActionBarDrawerToggleIcs.smali
│           │   │   ├── ActionBarDrawerToggleJellybeanMR2.smali
│           │   │   ├── ActionBarDrawerToggle.smali
│           │   │   ├── ActivityCompat$1.smali
│           │   │   ├── ActivityCompat$OnRequestPermissionsResultCallback.smali
│           │   │   ├── ActivityCompat$SharedElementCallback21Impl.smali
│           │   │   ├── ActivityCompat$SharedElementCallback23Impl$1.smali
│           │   │   ├── ActivityCompat$SharedElementCallback23Impl.smali
│           │   │   ├── ActivityCompatApi21$SharedElementCallback21.smali
│           │   │   ├── ActivityCompatApi21$SharedElementCallbackImpl.smali
│           │   │   ├── ActivityCompatApi21.smali
│           │   │   ├── ActivityCompatApi22.smali
│           │   │   ├── ActivityCompatApi23$OnSharedElementsReadyListenerBridge.smali
│           │   │   ├── ActivityCompatApi23$RequestPermissionsRequestCodeValidator.smali
│           │   │   ├── ActivityCompatApi23$SharedElementCallback23.smali
│           │   │   ├── ActivityCompatApi23$SharedElementCallbackImpl$1.smali
│           │   │   ├── ActivityCompatApi23$SharedElementCallbackImpl.smali
│           │   │   ├── ActivityCompatApi23.smali
│           │   │   ├── ActivityCompatJB.smali
│           │   │   ├── ActivityCompat.smali
│           │   │   ├── ActivityManagerCompatKitKat.smali
│           │   │   ├── ActivityManagerCompat.smali
│           │   │   ├── ActivityOptionsCompat$ActivityOptionsImpl21.smali
│           │   │   ├── ActivityOptionsCompat$ActivityOptionsImpl23.smali
│           │   │   ├── ActivityOptionsCompat$ActivityOptionsImpl24.smali
│           │   │   ├── ActivityOptionsCompat$ActivityOptionsImplJB.smali
│           │   │   ├── ActivityOptionsCompat21.smali
│           │   │   ├── ActivityOptionsCompat23.smali
│           │   │   ├── ActivityOptionsCompat24.smali
│           │   │   ├── ActivityOptionsCompatJB.smali
│           │   │   ├── ActivityOptionsCompat.smali
│           │   │   ├── AlarmManagerCompatApi21.smali
│           │   │   ├── AlarmManagerCompatApi23.smali
│           │   │   ├── AlarmManagerCompatKitKat.smali
│           │   │   ├── AlarmManagerCompat.smali
│           │   │   ├── AppLaunchChecker.smali
│           │   │   ├── AppOpsManagerCompat$AppOpsManager23.smali
│           │   │   ├── AppOpsManagerCompat$AppOpsManagerImpl.smali
│           │   │   ├── AppOpsManagerCompat23.smali
│           │   │   ├── AppOpsManagerCompat.smali
│           │   │   ├── BackStackRecord$Op.smali
│           │   │   ├── BackStackRecord.smali
│           │   │   ├── BackStackState$1.smali
│           │   │   ├── BackStackState.smali
│           │   │   ├── BaseFragmentActivityApi14.smali
│           │   │   ├── BaseFragmentActivityJB.smali
│           │   │   ├── BundleCompat$BundleCompatBaseImpl.smali
│           │   │   ├── BundleCompat.smali
│           │   │   ├── BundleUtil.smali
│           │   │   ├── DialogFragment.smali
│           │   │   ├── Fragment$1.smali
│           │   │   ├── Fragment$2.smali
│           │   │   ├── Fragment$AnimationInfo.smali
│           │   │   ├── Fragment$InstantiationException.smali
│           │   │   ├── Fragment$OnStartEnterTransitionListener.smali
│           │   │   ├── Fragment$SavedState$1.smali
│           │   │   ├── Fragment$SavedState.smali
│           │   │   ├── FragmentActivity$1.smali
│           │   │   ├── FragmentActivity$HostCallbacks.smali
│           │   │   ├── FragmentActivity$NonConfigurationInstances.smali
│           │   │   ├── FragmentActivity.smali
│           │   │   ├── FragmentContainer.smali
│           │   │   ├── FragmentController.smali
│           │   │   ├── FragmentHostCallback.smali
│           │   │   ├── FragmentManager$BackStackEntry.smali
│           │   │   ├── FragmentManager$FragmentLifecycleCallbacks.smali
│           │   │   ├── FragmentManager$OnBackStackChangedListener.smali
│           │   │   ├── FragmentManagerImpl$1.smali
│           │   │   ├── FragmentManagerImpl$2.smali
│           │   │   ├── FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1.smali
│           │   │   ├── FragmentManagerImpl$AnimateOnHWLayerIfNeededListener.smali
│           │   │   ├── FragmentManagerImpl$FragmentTag.smali
│           │   │   ├── FragmentManagerImpl$OpGenerator.smali
│           │   │   ├── FragmentManagerImpl$PopBackStackState.smali
│           │   │   ├── FragmentManagerImpl$StartEnterTransitionListener.smali
│           │   │   ├── FragmentManagerImpl.smali
│           │   │   ├── FragmentManagerNonConfig.smali
│           │   │   ├── FragmentManager.smali
│           │   │   ├── FragmentManagerState$1.smali
│           │   │   ├── FragmentManagerState.smali
│           │   │   ├── FragmentPagerAdapter.smali
│           │   │   ├── Fragment.smali
│           │   │   ├── FragmentState$1.smali
│           │   │   ├── FragmentStatePagerAdapter.smali
│           │   │   ├── FragmentState.smali
│           │   │   ├── FragmentTabHost$DummyTabFactory.smali
│           │   │   ├── FragmentTabHost$SavedState$1.smali
│           │   │   ├── FragmentTabHost$SavedState.smali
│           │   │   ├── FragmentTabHost$TabInfo.smali
│           │   │   ├── FragmentTabHost.smali
│           │   │   ├── FragmentTransaction.smali
│           │   │   ├── FragmentTransition$1.smali
│           │   │   ├── FragmentTransition$2.smali
│           │   │   ├── FragmentTransition$3.smali
│           │   │   ├── FragmentTransition$4.smali
│           │   │   ├── FragmentTransition$FragmentContainerTransition.smali
│           │   │   ├── FragmentTransitionCompat21$1.smali
│           │   │   ├── FragmentTransitionCompat21$2.smali
│           │   │   ├── FragmentTransitionCompat21$3.smali
│           │   │   ├── FragmentTransitionCompat21$4.smali
│           │   │   ├── FragmentTransitionCompat21$5.smali
│           │   │   ├── FragmentTransitionCompat21$6.smali
│           │   │   ├── FragmentTransitionCompat21$7.smali
│           │   │   ├── FragmentTransitionCompat21.smali
│           │   │   ├── FragmentTransition.smali
│           │   │   ├── INotificationSideChannel$Stub$Proxy.smali
│           │   │   ├── INotificationSideChannel$Stub.smali
│           │   │   ├── INotificationSideChannel.smali
│           │   │   ├── ListFragment$1.smali
│           │   │   ├── ListFragment$2.smali
│           │   │   ├── ListFragment.smali
│           │   │   ├── LoaderManager$LoaderCallbacks.smali
│           │   │   ├── LoaderManagerImpl$LoaderInfo.smali
│           │   │   ├── LoaderManagerImpl.smali
│           │   │   ├── LoaderManager.smali
│           │   │   ├── NavUtils$NavUtilsImplBase.smali
│           │   │   ├── NavUtils$NavUtilsImplJB.smali
│           │   │   ├── NavUtils$NavUtilsImpl.smali
│           │   │   ├── NavUtilsJB.smali
│           │   │   ├── NavUtils.smali
│           │   │   ├── NotificationBuilderWithActions.smali
│           │   │   ├── NotificationBuilderWithBuilderAccessor.smali
│           │   │   ├── NotificationCompat$Action$1.smali
│           │   │   ├── NotificationCompat$Action$Builder.smali
│           │   │   ├── NotificationCompat$Action$Extender.smali
│           │   │   ├── NotificationCompat$Action$WearableExtender.smali
│           │   │   ├── NotificationCompat$Action.smali
│           │   │   ├── NotificationCompat$BigPictureStyle.smali
│           │   │   ├── NotificationCompat$BigTextStyle.smali
│           │   │   ├── NotificationCompat$BuilderExtender.smali
│           │   │   ├── NotificationCompat$Builder.smali
│           │   │   ├── NotificationCompat$CarExtender$UnreadConversation$1.smali
│           │   │   ├── NotificationCompat$CarExtender$UnreadConversation$Builder.smali
│           │   │   ├── NotificationCompat$CarExtender$UnreadConversation.smali
│           │   │   ├── NotificationCompat$CarExtender.smali
│           │   │   ├── NotificationCompat$Extender.smali
│           │   │   ├── NotificationCompat$InboxStyle.smali
│           │   │   ├── NotificationCompat$MessagingStyle$Message.smali
│           │   │   ├── NotificationCompat$MessagingStyle.smali
│           │   │   ├── NotificationCompat$NotificationCompatApi16Impl.smali
│           │   │   ├── NotificationCompat$NotificationCompatApi19Impl.smali
│           │   │   ├── NotificationCompat$NotificationCompatApi20Impl.smali
│           │   │   ├── NotificationCompat$NotificationCompatApi21Impl.smali
│           │   │   ├── NotificationCompat$NotificationCompatApi24Impl.smali
│           │   │   ├── NotificationCompat$NotificationCompatApi26Impl.smali
│           │   │   ├── NotificationCompat$NotificationCompatBaseImpl$BuilderBase.smali
│           │   │   ├── NotificationCompat$NotificationCompatBaseImpl.smali
│           │   │   ├── NotificationCompat$NotificationCompatImpl.smali
│           │   │   ├── NotificationCompat$NotificationVisibility.smali
│           │   │   ├── NotificationCompat$Style.smali
│           │   │   ├── NotificationCompat$WearableExtender.smali
│           │   │   ├── NotificationCompatApi20$Builder.smali
│           │   │   ├── NotificationCompatApi20.smali
│           │   │   ├── NotificationCompatApi21$Builder.smali
│           │   │   ├── NotificationCompatApi21.smali
│           │   │   ├── NotificationCompatApi23.smali
│           │   │   ├── NotificationCompatApi24$Builder.smali
│           │   │   ├── NotificationCompatApi24.smali
│           │   │   ├── NotificationCompatApi26$Builder.smali
│           │   │   ├── NotificationCompatApi26.smali
│           │   │   ├── NotificationCompatBase$Action$Factory.smali
│           │   │   ├── NotificationCompatBase$Action.smali
│           │   │   ├── NotificationCompatBase$UnreadConversation$Factory.smali
│           │   │   ├── NotificationCompatBase$UnreadConversation.smali
│           │   │   ├── NotificationCompatBase.smali
│           │   │   ├── NotificationCompatExtras.smali
│           │   │   ├── NotificationCompatJellybean$Builder.smali
│           │   │   ├── NotificationCompatJellybean.smali
│           │   │   ├── NotificationCompatKitKat$Builder.smali
│           │   │   ├── NotificationCompatKitKat.smali
│           │   │   ├── NotificationCompatSideChannelService$NotificationSideChannelStub.smali
│           │   │   ├── NotificationCompatSideChannelService.smali
│           │   │   ├── NotificationCompat.smali
│           │   │   ├── NotificationManagerCompat$CancelTask.smali
│           │   │   ├── NotificationManagerCompat$ImplApi24.smali
│           │   │   ├── NotificationManagerCompat$ImplBase.smali
│           │   │   ├── NotificationManagerCompat$ImplKitKat.smali
│           │   │   ├── NotificationManagerCompat$Impl.smali
│           │   │   ├── NotificationManagerCompat$NotifyTask.smali
│           │   │   ├── NotificationManagerCompat$ServiceConnectedEvent.smali
│           │   │   ├── NotificationManagerCompat$SideChannelManager$ListenerRecord.smali
│           │   │   ├── NotificationManagerCompat$SideChannelManager.smali
│           │   │   ├── NotificationManagerCompat$Task.smali
│           │   │   ├── NotificationManagerCompatApi24.smali
│           │   │   ├── NotificationManagerCompatKitKat.smali
│           │   │   ├── NotificationManagerCompat.smali
│           │   │   ├── OneShotPreDrawListener.smali
│           │   │   ├── RemoteInput$1.smali
│           │   │   ├── RemoteInput$Builder.smali
│           │   │   ├── RemoteInput$ImplApi20.smali
│           │   │   ├── RemoteInput$ImplBase.smali
│           │   │   ├── RemoteInput$ImplJellybean.smali
│           │   │   ├── RemoteInput$Impl.smali
│           │   │   ├── RemoteInputCompatApi20.smali
│           │   │   ├── RemoteInputCompatBase$RemoteInput$Factory.smali
│           │   │   ├── RemoteInputCompatBase$RemoteInput.smali
│           │   │   ├── RemoteInputCompatBase.smali
│           │   │   ├── RemoteInputCompatJellybean.smali
│           │   │   ├── RemoteInput.smali
│           │   │   ├── ServiceCompat$Api24ServiceCompatImpl.smali
│           │   │   ├── ServiceCompat$BaseServiceCompatImpl.smali
│           │   │   ├── ServiceCompat$ServiceCompatImpl.smali
│           │   │   ├── ServiceCompat$StopForegroundFlags.smali
│           │   │   ├── ServiceCompatApi24.smali
│           │   │   ├── ServiceCompat.smali
│           │   │   ├── ShareCompat$IntentBuilder.smali
│           │   │   ├── ShareCompat$IntentReader.smali
│           │   │   ├── ShareCompat$ShareCompatImplBase.smali
│           │   │   ├── ShareCompat$ShareCompatImplICS.smali
│           │   │   ├── ShareCompat$ShareCompatImplJB.smali
│           │   │   ├── ShareCompat$ShareCompatImpl.smali
│           │   │   ├── ShareCompatICS.smali
│           │   │   ├── ShareCompatJB.smali
│           │   │   ├── ShareCompat.smali
│           │   │   ├── SharedElementCallback$OnSharedElementsReadyListener.smali
│           │   │   ├── SharedElementCallback.smali
│           │   │   ├── SuperNotCalledException.smali
│           │   │   ├── SupportActivity$ExtraData.smali
│           │   │   ├── SupportActivity.smali
│           │   │   ├── TaskStackBuilder$SupportParentable.smali
│           │   │   ├── TaskStackBuilder$TaskStackBuilderApi16Impl.smali
│           │   │   ├── TaskStackBuilder$TaskStackBuilderBaseImpl.smali
│           │   │   └── TaskStackBuilder.smali
│           │   ├── BuildConfig.smali
│           │   ├── content
│           │   │   ├── AsyncTaskLoader$LoadTask.smali
│           │   │   ├── AsyncTaskLoader.smali
│           │   │   ├── ContentResolverCompat$ContentResolverCompatImplBase.smali
│           │   │   ├── ContentResolverCompat$ContentResolverCompatImplJB.smali
│           │   │   ├── ContentResolverCompat$ContentResolverCompatImpl.smali
│           │   │   ├── ContentResolverCompatJellybean.smali
│           │   │   ├── ContentResolverCompat.smali
│           │   │   ├── ContextCompat.smali
│           │   │   ├── CursorLoader.smali
│           │   │   ├── FileProvider$PathStrategy.smali
│           │   │   ├── FileProvider$SimplePathStrategy.smali
│           │   │   ├── FileProvider.smali
│           │   │   ├── IntentCompat$IntentCompatApi15Impl.smali
│           │   │   ├── IntentCompat$IntentCompatBaseImpl.smali
│           │   │   ├── IntentCompat.smali
│           │   │   ├── Loader$ForceLoadContentObserver.smali
│           │   │   ├── Loader$OnLoadCanceledListener.smali
│           │   │   ├── Loader$OnLoadCompleteListener.smali
│           │   │   ├── Loader.smali
│           │   │   ├── LocalBroadcastManager$1.smali
│           │   │   ├── LocalBroadcastManager$BroadcastRecord.smali
│           │   │   ├── LocalBroadcastManager$ReceiverRecord.smali
│           │   │   ├── LocalBroadcastManager.smali
│           │   │   ├── MimeTypeFilter.smali
│           │   │   ├── ModernAsyncTask$1.smali
│           │   │   ├── ModernAsyncTask$2.smali
│           │   │   ├── ModernAsyncTask$3.smali
│           │   │   ├── ModernAsyncTask$4.smali
│           │   │   ├── ModernAsyncTask$AsyncTaskResult.smali
│           │   │   ├── ModernAsyncTask$InternalHandler.smali
│           │   │   ├── ModernAsyncTask$Status.smali
│           │   │   ├── ModernAsyncTask$WorkerRunnable.smali
│           │   │   ├── ModernAsyncTask.smali
│           │   │   ├── ParallelExecutorCompat.smali
│           │   │   ├── PermissionChecker$PermissionResult.smali
│           │   │   ├── PermissionChecker.smali
│           │   │   ├── pm
│           │   │   │   ├── ActivityInfoCompat.smali
│           │   │   │   ├── ShortcutInfoCompat$1.smali
│           │   │   │   ├── ShortcutInfoCompat$Builder.smali
│           │   │   │   ├── ShortcutInfoCompat.smali
│           │   │   │   ├── ShortcutManagerCompat$1.smali
│           │   │   │   ├── ShortcutManagerCompatApi26.smali
│           │   │   │   └── ShortcutManagerCompat.smali
│           │   │   ├── res
│           │   │   │   ├── ConfigurationHelper$1.smali
│           │   │   │   ├── ConfigurationHelper$ConfigurationHelperApi17Impl.smali
│           │   │   │   ├── ConfigurationHelper$ConfigurationHelperBaseImpl.smali
│           │   │   │   ├── ConfigurationHelperJellybeanMr1.smali
│           │   │   │   ├── ConfigurationHelper.smali
│           │   │   │   ├── ResourcesCompat.smali
│           │   │   │   └── TypedArrayUtils.smali
│           │   │   ├── SharedPreferencesCompat$EditorCompat$Helper.smali
│           │   │   ├── SharedPreferencesCompat$EditorCompat.smali
│           │   │   ├── SharedPreferencesCompat.smali
│           │   │   └── WakefulBroadcastReceiver.smali
│           │   ├── database
│           │   │   └── DatabaseUtilsCompat.smali
│           │   ├── graphics
│           │   │   ├── BitmapCompat$BitmapCompatApi18Impl.smali
│           │   │   ├── BitmapCompat$BitmapCompatApi19Impl.smali
│           │   │   ├── BitmapCompat$BitmapCompatBaseImpl.smali
│           │   │   ├── BitmapCompat.smali
│           │   │   ├── ColorUtils.smali
│           │   │   ├── drawable
│           │   │   │   ├── DrawableCompat$DrawableCompatApi17Impl.smali
│           │   │   │   ├── DrawableCompat$DrawableCompatApi19Impl.smali
│           │   │   │   ├── DrawableCompat$DrawableCompatApi21Impl.smali
│           │   │   │   ├── DrawableCompat$DrawableCompatApi23Impl.smali
│           │   │   │   ├── DrawableCompat$DrawableCompatBaseImpl.smali
│           │   │   │   ├── DrawableCompat.smali
│           │   │   │   ├── DrawableWrapperApi14$DrawableWrapperStateBase.smali
│           │   │   │   ├── DrawableWrapperApi14$DrawableWrapperState.smali
│           │   │   │   ├── DrawableWrapperApi14.smali
│           │   │   │   ├── DrawableWrapperApi19$DrawableWrapperStateKitKat.smali
│           │   │   │   ├── DrawableWrapperApi19.smali
│           │   │   │   ├── DrawableWrapperApi21$DrawableWrapperStateLollipop.smali
│           │   │   │   ├── DrawableWrapperApi21.smali
│           │   │   │   ├── DrawableWrapper.smali
│           │   │   │   ├── RoundedBitmapDrawable21.smali
│           │   │   │   ├── RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable.smali
│           │   │   │   ├── RoundedBitmapDrawableFactory.smali
│           │   │   │   ├── RoundedBitmapDrawable.smali
│           │   │   │   └── TintAwareDrawable.smali
│           │   │   ├── PaintCompatApi14.smali
│           │   │   └── PaintCompat.smali
│           │   ├── hardware
│           │   │   ├── display
│           │   │   │   ├── DisplayManagerCompat$JellybeanMr1Impl.smali
│           │   │   │   ├── DisplayManagerCompat$LegacyImpl.smali
│           │   │   │   ├── DisplayManagerCompat.smali
│           │   │   │   └── DisplayManagerJellybeanMr1.smali
│           │   │   └── fingerprint
│           │   │       ├── FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1.smali
│           │   │       ├── FingerprintManagerCompat$Api23FingerprintManagerCompatImpl.smali
│           │   │       ├── FingerprintManagerCompat$AuthenticationCallback.smali
│           │   │       ├── FingerprintManagerCompat$AuthenticationResult.smali
│           │   │       ├── FingerprintManagerCompat$CryptoObject.smali
│           │   │       ├── FingerprintManagerCompat$FingerprintManagerCompatImpl.smali
│           │   │       ├── FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl.smali
│           │   │       ├── FingerprintManagerCompatApi23$1.smali
│           │   │       ├── FingerprintManagerCompatApi23$AuthenticationCallback.smali
│           │   │       ├── FingerprintManagerCompatApi23$AuthenticationResultInternal.smali
│           │   │       ├── FingerprintManagerCompatApi23$CryptoObject.smali
│           │   │       ├── FingerprintManagerCompatApi23.smali
│           │   │       └── FingerprintManagerCompat.smali
│           │   ├── internal
│           │   │   ├── package-info.smali
│           │   │   └── view
│           │   │       ├── SupportMenuItem.smali
│           │   │       ├── SupportMenu.smali
│           │   │       └── SupportSubMenu.smali
│           │   ├── math
│           │   │   └── MathUtils.smali
│           │   ├── media
│           │   │   ├── MediaBrowserCompat$CallbackHandler.smali
│           │   │   ├── MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal.smali
│           │   │   ├── MediaBrowserCompat$ConnectionCallback$StubApi21.smali
│           │   │   ├── MediaBrowserCompat$ConnectionCallback.smali
│           │   │   ├── MediaBrowserCompat$ItemCallback$StubApi23.smali
│           │   │   ├── MediaBrowserCompat$ItemCallback.smali
│           │   │   ├── MediaBrowserCompat$ItemReceiver.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplApi21$1.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplApi21$2.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplApi21$3.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplApi21$4.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplApi21$5.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplApi21$6.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplApi21.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplApi23.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplApi24.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplBase$1.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplBase$2.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplBase$3.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplBase$4.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplBase$5.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImplBase.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserImpl.smali
│           │   │   ├── MediaBrowserCompat$MediaBrowserServiceCallbackImpl.smali
│           │   │   ├── MediaBrowserCompat$MediaItem$1.smali
│           │   │   ├── MediaBrowserCompat$MediaItem$Flags.smali
│           │   │   ├── MediaBrowserCompat$MediaItem.smali
│           │   │   ├── MediaBrowserCompat$SearchCallback.smali
│           │   │   ├── MediaBrowserCompat$SearchResultReceiver.smali
│           │   │   ├── MediaBrowserCompat$ServiceBinderWrapper.smali
│           │   │   ├── MediaBrowserCompat$SubscriptionCallback$StubApi21.smali
│           │   │   ├── MediaBrowserCompat$SubscriptionCallback$StubApi24.smali
│           │   │   ├── MediaBrowserCompat$SubscriptionCallback.smali
│           │   │   ├── MediaBrowserCompat$Subscription.smali
│           │   │   ├── MediaBrowserCompatApi21$ConnectionCallbackProxy.smali
│           │   │   ├── MediaBrowserCompatApi21$ConnectionCallback.smali
│           │   │   ├── MediaBrowserCompatApi21$MediaItem.smali
│           │   │   ├── MediaBrowserCompatApi21$SubscriptionCallbackProxy.smali
│           │   │   ├── MediaBrowserCompatApi21$SubscriptionCallback.smali
│           │   │   ├── MediaBrowserCompatApi21.smali
│           │   │   ├── MediaBrowserCompatApi23$ItemCallbackProxy.smali
│           │   │   ├── MediaBrowserCompatApi23$ItemCallback.smali
│           │   │   ├── MediaBrowserCompatApi23.smali
│           │   │   ├── MediaBrowserCompatApi24$SubscriptionCallbackProxy.smali
│           │   │   ├── MediaBrowserCompatApi24$SubscriptionCallback.smali
│           │   │   ├── MediaBrowserCompatApi24.smali
│           │   │   ├── MediaBrowserCompat.smali
│           │   │   ├── MediaBrowserCompatUtils.smali
│           │   │   ├── MediaBrowserProtocol.smali
│           │   │   ├── MediaBrowserServiceCompat$1.smali
│           │   │   ├── MediaBrowserServiceCompat$2.smali
│           │   │   ├── MediaBrowserServiceCompat$3.smali
│           │   │   ├── MediaBrowserServiceCompat$BrowserRoot.smali
│           │   │   ├── MediaBrowserServiceCompat$ConnectionRecord.smali
│           │   │   ├── MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1.smali
│           │   │   ├── MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2.smali
│           │   │   ├── MediaBrowserServiceCompat$MediaBrowserServiceImplApi21.smali
│           │   │   ├── MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1.smali
│           │   │   ├── MediaBrowserServiceCompat$MediaBrowserServiceImplApi23.smali
│           │   │   ├── MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1.smali
│           │   │   ├── MediaBrowserServiceCompat$MediaBrowserServiceImplApi24.smali
│           │   │   ├── MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1.smali
│           │   │   ├── MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2.smali
│           │   │   ├── MediaBrowserServiceCompat$MediaBrowserServiceImplBase.smali
│           │   │   ├── MediaBrowserServiceCompat$MediaBrowserServiceImpl.smali
│           │   │   ├── MediaBrowserServiceCompat$Result.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceBinderImpl$1.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceBinderImpl$2.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceBinderImpl$3.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceBinderImpl$4.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceBinderImpl$5.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceBinderImpl$6.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceBinderImpl$7.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceBinderImpl$8.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceBinderImpl.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceCallbacksCompat.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceCallbacks.smali
│           │   │   ├── MediaBrowserServiceCompat$ServiceHandler.smali
│           │   │   ├── MediaBrowserServiceCompatApi21$BrowserRoot.smali
│           │   │   ├── MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor.smali
│           │   │   ├── MediaBrowserServiceCompatApi21$ResultWrapper.smali
│           │   │   ├── MediaBrowserServiceCompatApi21$ServiceCompatProxy.smali
│           │   │   ├── MediaBrowserServiceCompatApi21.smali
│           │   │   ├── MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor.smali
│           │   │   ├── MediaBrowserServiceCompatApi23$ServiceCompatProxy.smali
│           │   │   ├── MediaBrowserServiceCompatApi23.smali
│           │   │   ├── MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor.smali
│           │   │   ├── MediaBrowserServiceCompatApi24$ResultWrapper.smali
│           │   │   ├── MediaBrowserServiceCompatApi24$ServiceCompatProxy.smali
│           │   │   ├── MediaBrowserServiceCompatApi24.smali
│           │   │   ├── MediaBrowserServiceCompat.smali
│           │   │   ├── MediaDescriptionCompat$1.smali
│           │   │   ├── MediaDescriptionCompat$Builder.smali
│           │   │   ├── MediaDescriptionCompatApi21$Builder.smali
│           │   │   ├── MediaDescriptionCompatApi21.smali
│           │   │   ├── MediaDescriptionCompatApi23$Builder.smali
│           │   │   ├── MediaDescriptionCompatApi23.smali
│           │   │   ├── MediaDescriptionCompat.smali
│           │   │   ├── MediaMetadataCompat$1.smali
│           │   │   ├── MediaMetadataCompat$BitmapKey.smali
│           │   │   ├── MediaMetadataCompat$Builder.smali
│           │   │   ├── MediaMetadataCompat$LongKey.smali
│           │   │   ├── MediaMetadataCompat$RatingKey.smali
│           │   │   ├── MediaMetadataCompat$TextKey.smali
│           │   │   ├── MediaMetadataCompatApi21$Builder.smali
│           │   │   ├── MediaMetadataCompatApi21.smali
│           │   │   ├── MediaMetadataCompat.smali
│           │   │   ├── ParceledListSliceAdapterApi21.smali
│           │   │   ├── RatingCompat$1.smali
│           │   │   ├── RatingCompat$StarStyle.smali
│           │   │   ├── RatingCompat$Style.smali
│           │   │   ├── RatingCompatKitkat.smali
│           │   │   ├── RatingCompat.smali
│           │   │   ├── session
│           │   │   │   ├── IMediaControllerCallback$Stub$Proxy.smali
│           │   │   │   ├── IMediaControllerCallback$Stub.smali
│           │   │   │   ├── IMediaControllerCallback.smali
│           │   │   │   ├── IMediaSession$Stub$Proxy.smali
│           │   │   │   ├── IMediaSession$Stub.smali
│           │   │   │   ├── IMediaSession.smali
│           │   │   │   ├── MediaButtonReceiver.smali
│           │   │   │   ├── MediaControllerCompat$1.smali
│           │   │   │   ├── MediaControllerCompat$Callback$MessageHandler.smali
│           │   │   │   ├── MediaControllerCompat$Callback$StubApi21.smali
│           │   │   │   ├── MediaControllerCompat$Callback$StubApi26.smali
│           │   │   │   ├── MediaControllerCompat$Callback$StubCompat.smali
│           │   │   │   ├── MediaControllerCompat$Callback.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerExtraData.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$1.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$2.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$3.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$4.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImplApi21$ExtraCallback.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImplApi21.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImplApi23.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImplApi24.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImplApi26.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImplBase.smali
│           │   │   │   ├── MediaControllerCompat$MediaControllerImpl.smali
│           │   │   │   ├── MediaControllerCompat$PlaybackInfo.smali
│           │   │   │   ├── MediaControllerCompat$TransportControlsApi21.smali
│           │   │   │   ├── MediaControllerCompat$TransportControlsApi23.smali
│           │   │   │   ├── MediaControllerCompat$TransportControlsApi24.smali
│           │   │   │   ├── MediaControllerCompat$TransportControlsApi26.smali
│           │   │   │   ├── MediaControllerCompat$TransportControlsBase.smali
│           │   │   │   ├── MediaControllerCompat$TransportControls.smali
│           │   │   │   ├── MediaControllerCompatApi21$CallbackProxy.smali
│           │   │   │   ├── MediaControllerCompatApi21$Callback.smali
│           │   │   │   ├── MediaControllerCompatApi21$PlaybackInfo.smali
│           │   │   │   ├── MediaControllerCompatApi21$TransportControls.smali
│           │   │   │   ├── MediaControllerCompatApi21.smali
│           │   │   │   ├── MediaControllerCompatApi23$TransportControls.smali
│           │   │   │   ├── MediaControllerCompatApi23.smali
│           │   │   │   ├── MediaControllerCompatApi24$TransportControls.smali
│           │   │   │   ├── MediaControllerCompatApi24.smali
│           │   │   │   ├── MediaControllerCompatApi26$CallbackProxy.smali
│           │   │   │   ├── MediaControllerCompatApi26$Callback.smali
│           │   │   │   ├── MediaControllerCompatApi26$TransportControls.smali
│           │   │   │   ├── MediaControllerCompatApi26.smali
│           │   │   │   ├── MediaControllerCompat.smali
│           │   │   │   ├── MediaSessionCompat$1.smali
│           │   │   │   ├── MediaSessionCompat$2.smali
│           │   │   │   ├── MediaSessionCompat$Callback$StubApi21.smali
│           │   │   │   ├── MediaSessionCompat$Callback$StubApi23.smali
│           │   │   │   ├── MediaSessionCompat$Callback$StubApi24.smali
│           │   │   │   ├── MediaSessionCompat$Callback$StubApi26.smali
│           │   │   │   ├── MediaSessionCompat$Callback.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImplApi18$1.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImplApi18.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImplApi19$1.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImplApi19.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImplApi21$ExtraSession.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImplApi21.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImplBase$1.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImplBase$Command.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImplBase$MediaSessionStub.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImplBase$MessageHandler.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImplBase.smali
│           │   │   │   ├── MediaSessionCompat$MediaSessionImpl.smali
│           │   │   │   ├── MediaSessionCompat$OnActiveChangeListener.smali
│           │   │   │   ├── MediaSessionCompat$QueueItem$1.smali
│           │   │   │   ├── MediaSessionCompat$QueueItem.smali
│           │   │   │   ├── MediaSessionCompat$ResultReceiverWrapper$1.smali
│           │   │   │   ├── MediaSessionCompat$ResultReceiverWrapper.smali
│           │   │   │   ├── MediaSessionCompat$SessionFlags.smali
│           │   │   │   ├── MediaSessionCompat$Token$1.smali
│           │   │   │   ├── MediaSessionCompat$Token.smali
│           │   │   │   ├── MediaSessionCompatApi21$CallbackProxy.smali
│           │   │   │   ├── MediaSessionCompatApi21$Callback.smali
│           │   │   │   ├── MediaSessionCompatApi21$QueueItem.smali
│           │   │   │   ├── MediaSessionCompatApi21.smali
│           │   │   │   ├── MediaSessionCompatApi22.smali
│           │   │   │   ├── MediaSessionCompatApi23$CallbackProxy.smali
│           │   │   │   ├── MediaSessionCompatApi23$Callback.smali
│           │   │   │   ├── MediaSessionCompatApi23.smali
│           │   │   │   ├── MediaSessionCompatApi24$CallbackProxy.smali
│           │   │   │   ├── MediaSessionCompatApi24$Callback.smali
│           │   │   │   ├── MediaSessionCompatApi24.smali
│           │   │   │   ├── MediaSessionCompatApi26$CallbackProxy.smali
│           │   │   │   ├── MediaSessionCompatApi26$Callback.smali
│           │   │   │   ├── MediaSessionCompatApi26.smali
│           │   │   │   ├── MediaSessionCompat.smali
│           │   │   │   ├── ParcelableVolumeInfo$1.smali
│           │   │   │   ├── ParcelableVolumeInfo.smali
│           │   │   │   ├── PlaybackStateCompat$1.smali
│           │   │   │   ├── PlaybackStateCompat$Actions.smali
│           │   │   │   ├── PlaybackStateCompat$Builder.smali
│           │   │   │   ├── PlaybackStateCompat$CustomAction$1.smali
│           │   │   │   ├── PlaybackStateCompat$CustomAction$Builder.smali
│           │   │   │   ├── PlaybackStateCompat$CustomAction.smali
│           │   │   │   ├── PlaybackStateCompat$ErrorCode.smali
│           │   │   │   ├── PlaybackStateCompat$MediaKeyAction.smali
│           │   │   │   ├── PlaybackStateCompat$RepeatMode.smali
│           │   │   │   ├── PlaybackStateCompat$State.smali
│           │   │   │   ├── PlaybackStateCompatApi21$CustomAction.smali
│           │   │   │   ├── PlaybackStateCompatApi21.smali
│           │   │   │   ├── PlaybackStateCompatApi22.smali
│           │   │   │   └── PlaybackStateCompat.smali
│           │   │   ├── TransportController.smali
│           │   │   ├── TransportMediator$1.smali
│           │   │   ├── TransportMediator$2.smali
│           │   │   ├── TransportMediatorCallback.smali
│           │   │   ├── TransportMediatorJellybeanMR2$1.smali
│           │   │   ├── TransportMediatorJellybeanMR2$2.smali
│           │   │   ├── TransportMediatorJellybeanMR2$3.smali
│           │   │   ├── TransportMediatorJellybeanMR2$4.smali
│           │   │   ├── TransportMediatorJellybeanMR2$5.smali
│           │   │   ├── TransportMediatorJellybeanMR2$6.smali
│           │   │   ├── TransportMediatorJellybeanMR2.smali
│           │   │   ├── TransportMediator.smali
│           │   │   ├── TransportPerformer.smali
│           │   │   ├── TransportStateListener.smali
│           │   │   ├── VolumeProviderCompat$1.smali
│           │   │   ├── VolumeProviderCompat$Callback.smali
│           │   │   ├── VolumeProviderCompat$ControlType.smali
│           │   │   ├── VolumeProviderCompatApi21$1.smali
│           │   │   ├── VolumeProviderCompatApi21$Delegate.smali
│           │   │   ├── VolumeProviderCompatApi21.smali
│           │   │   └── VolumeProviderCompat.smali
│           │   ├── net
│           │   │   ├── ConnectivityManagerCompat$ConnectivityManagerCompatApi16Impl.smali
│           │   │   ├── ConnectivityManagerCompat$ConnectivityManagerCompatApi24Impl.smali
│           │   │   ├── ConnectivityManagerCompat$ConnectivityManagerCompatBaseImpl.smali
│           │   │   ├── ConnectivityManagerCompat$ConnectivityManagerCompatImpl.smali
│           │   │   ├── ConnectivityManagerCompat$RestrictBackgroundStatus.smali
│           │   │   ├── ConnectivityManagerCompat.smali
│           │   │   ├── DatagramSocketWrapper$DatagramSocketImplWrapper.smali
│           │   │   ├── DatagramSocketWrapper.smali
│           │   │   ├── TrafficStatsCompat$TrafficStatsCompatApi24Impl.smali
│           │   │   ├── TrafficStatsCompat$TrafficStatsCompatBaseImpl.smali
│           │   │   └── TrafficStatsCompat.smali
│           │   ├── os
│           │   │   ├── AsyncTaskCompat.smali
│           │   │   ├── BuildCompat.smali
│           │   │   ├── CancellationSignal$OnCancelListener.smali
│           │   │   ├── CancellationSignalCompatJellybean.smali
│           │   │   ├── CancellationSignal.smali
│           │   │   ├── EnvironmentCompatKitKat.smali
│           │   │   ├── EnvironmentCompat.smali
│           │   │   ├── IResultReceiver$Stub$Proxy.smali
│           │   │   ├── IResultReceiver$Stub.smali
│           │   │   ├── IResultReceiver.smali
│           │   │   ├── OperationCanceledException.smali
│           │   │   ├── ParcelableCompat$CompatCreator.smali
│           │   │   ├── ParcelableCompatCreatorCallbacks.smali
│           │   │   ├── ParcelableCompatCreatorHoneycombMR2.smali
│           │   │   ├── ParcelableCompatCreatorHoneycombMR2Stub.smali
│           │   │   ├── ParcelableCompat.smali
│           │   │   ├── ResultReceiver$1.smali
│           │   │   ├── ResultReceiver$MyResultReceiver.smali
│           │   │   ├── ResultReceiver$MyRunnable.smali
│           │   │   ├── ResultReceiver.smali
│           │   │   ├── TraceCompat.smali
│           │   │   ├── TraceJellybeanMR2.smali
│           │   │   ├── UserManagerCompatApi24.smali
│           │   │   └── UserManagerCompat.smali
│           │   ├── print
│           │   │   ├── PrintHelper$1.smali
│           │   │   ├── PrintHelper$OnPrintFinishCallback.smali
│           │   │   ├── PrintHelper$PrintHelperApi20Impl.smali
│           │   │   ├── PrintHelper$PrintHelperApi23Impl.smali
│           │   │   ├── PrintHelper$PrintHelperApi24Impl.smali
│           │   │   ├── PrintHelper$PrintHelperImpl$1.smali
│           │   │   ├── PrintHelper$PrintHelperImpl$2.smali
│           │   │   ├── PrintHelper$PrintHelperImpl.smali
│           │   │   ├── PrintHelper$PrintHelperKitkatImpl.smali
│           │   │   ├── PrintHelper$PrintHelperStubImpl.smali
│           │   │   ├── PrintHelper$PrintHelperVersionImpl.smali
│           │   │   ├── PrintHelperApi20.smali
│           │   │   ├── PrintHelperApi23.smali
│           │   │   ├── PrintHelperApi24.smali
│           │   │   ├── PrintHelperKitkat$1.smali
│           │   │   ├── PrintHelperKitkat$2.smali
│           │   │   ├── PrintHelperKitkat$3$1$1.smali
│           │   │   ├── PrintHelperKitkat$3$1.smali
│           │   │   ├── PrintHelperKitkat$3.smali
│           │   │   ├── PrintHelperKitkat$OnPrintFinishCallback.smali
│           │   │   ├── PrintHelperKitkat.smali
│           │   │   └── PrintHelper.smali
│           │   ├── provider
│           │   │   ├── DocumentFile.smali
│           │   │   ├── DocumentsContractApi19.smali
│           │   │   ├── DocumentsContractApi21.smali
│           │   │   ├── RawDocumentFile.smali
│           │   │   ├── SingleDocumentFile.smali
│           │   │   └── TreeDocumentFile.smali
│           │   ├── R.smali
│           │   ├── text
│           │   │   ├── BidiFormatter$1.smali
│           │   │   ├── BidiFormatter$Builder.smali
│           │   │   ├── BidiFormatter$DirectionalityEstimator.smali
│           │   │   ├── BidiFormatter.smali
│           │   │   ├── ICUCompat$ICUCompatApi21Impl.smali
│           │   │   ├── ICUCompat$ICUCompatBaseImpl.smali
│           │   │   ├── ICUCompatApi21.smali
│           │   │   ├── ICUCompatIcs.smali
│           │   │   ├── ICUCompat.smali
│           │   │   ├── TextDirectionHeuristicCompat.smali
│           │   │   ├── TextDirectionHeuristicsCompat$AnyStrong.smali
│           │   │   ├── TextDirectionHeuristicsCompat$FirstStrong.smali
│           │   │   ├── TextDirectionHeuristicsCompat$TextDirectionAlgorithm.smali
│           │   │   ├── TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl.smali
│           │   │   ├── TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal.smali
│           │   │   ├── TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale.smali
│           │   │   ├── TextDirectionHeuristicsCompat.smali
│           │   │   ├── TextUtilsCompat$TextUtilsCompatImpl.smali
│           │   │   ├── TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl.smali
│           │   │   ├── TextUtilsCompatJellybeanMr1.smali
│           │   │   ├── TextUtilsCompat.smali
│           │   │   └── util
│           │   │       ├── LinkifyCompat$1.smali
│           │   │       ├── LinkifyCompat$LinkifyMask.smali
│           │   │       ├── LinkifyCompat$LinkSpec.smali
│           │   │       └── LinkifyCompat.smali
│           │   ├── util
│           │   │   ├── ArrayMap$1.smali
│           │   │   ├── ArrayMap.smali
│           │   │   ├── ArraySet$1.smali
│           │   │   ├── ArraySet.smali
│           │   │   ├── AtomicFile.smali
│           │   │   ├── CircularArray.smali
│           │   │   ├── CircularIntArray.smali
│           │   │   ├── ContainerHelpers.smali
│           │   │   ├── DebugUtils.smali
│           │   │   ├── LogWriter.smali
│           │   │   ├── LongSparseArray.smali
│           │   │   ├── LruCache.smali
│           │   │   ├── MapCollections$ArrayIterator.smali
│           │   │   ├── MapCollections$EntrySet.smali
│           │   │   ├── MapCollections$KeySet.smali
│           │   │   ├── MapCollections$MapIterator.smali
│           │   │   ├── MapCollections$ValuesCollection.smali
│           │   │   ├── MapCollections.smali
│           │   │   ├── Pair.smali
│           │   │   ├── PatternsCompat.smali
│           │   │   ├── Pools$Pool.smali
│           │   │   ├── Pools$SimplePool.smali
│           │   │   ├── Pools$SynchronizedPool.smali
│           │   │   ├── Pools.smali
│           │   │   ├── Preconditions.smali
│           │   │   ├── SimpleArrayMap.smali
│           │   │   ├── SparseArrayCompat.smali
│           │   │   └── TimeUtils.smali
│           │   ├── view
│           │   │   ├── AbsSavedState$1.smali
│           │   │   ├── AbsSavedState$2.smali
│           │   │   ├── AbsSavedState.smali
│           │   │   ├── accessibility
│           │   │   │   ├── AccessibilityEventCompat$AccessibilityEventIcsImpl.smali
│           │   │   │   ├── AccessibilityEventCompat$AccessibilityEventJellyBeanImpl.smali
│           │   │   │   ├── AccessibilityEventCompat$AccessibilityEventKitKatImpl.smali
│           │   │   │   ├── AccessibilityEventCompat$AccessibilityEventStubImpl.smali
│           │   │   │   ├── AccessibilityEventCompat$AccessibilityEventVersionImpl.smali
│           │   │   │   ├── AccessibilityEventCompatIcs.smali
│           │   │   │   ├── AccessibilityEventCompatJellyBean.smali
│           │   │   │   ├── AccessibilityEventCompatKitKat.smali
│           │   │   │   ├── AccessibilityEventCompat.smali
│           │   │   │   ├── AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1.smali
│           │   │   │   ├── AccessibilityManagerCompat$AccessibilityManagerIcsImpl.smali
│           │   │   │   ├── AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1.smali
│           │   │   │   ├── AccessibilityManagerCompat$AccessibilityManagerKitKatImpl.smali
│           │   │   │   ├── AccessibilityManagerCompat$AccessibilityManagerStubImpl.smali
│           │   │   │   ├── AccessibilityManagerCompat$AccessibilityManagerVersionImpl.smali
│           │   │   │   ├── AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat.smali
│           │   │   │   ├── AccessibilityManagerCompat$AccessibilityStateChangeListener.smali
│           │   │   │   ├── AccessibilityManagerCompat$TouchExplorationStateChangeListener.smali
│           │   │   │   ├── AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge.smali
│           │   │   │   ├── AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper.smali
│           │   │   │   ├── AccessibilityManagerCompatIcs.smali
│           │   │   │   ├── AccessibilityManagerCompatKitKat$1.smali
│           │   │   │   ├── AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge.smali
│           │   │   │   ├── AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper.smali
│           │   │   │   ├── AccessibilityManagerCompatKitKat.smali
│           │   │   │   ├── AccessibilityManagerCompat.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityActionCompat.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi24Impl.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$CollectionInfoCompat.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$CollectionItemInfoCompat.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat$RangeInfoCompat.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatApi21$CollectionInfo.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatApi21$CollectionItemInfo.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatApi21.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatApi22.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatApi23.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatApi24.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatIcs.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatJellybeanMr1.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatJellybeanMr2.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatJellyBean.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatKitKat$CollectionInfo.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatKitKat$CollectionItemInfo.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatKitKat$RangeInfo.smali
│           │   │   │   ├── AccessibilityNodeInfoCompatKitKat.smali
│           │   │   │   ├── AccessibilityNodeInfoCompat.smali
│           │   │   │   ├── AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl.smali
│           │   │   │   ├── AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1.smali
│           │   │   │   ├── AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl.smali
│           │   │   │   ├── AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1.smali
│           │   │   │   ├── AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl.smali
│           │   │   │   ├── AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl.smali
│           │   │   │   ├── AccessibilityNodeProviderCompatJellyBean$1.smali
│           │   │   │   ├── AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge.smali
│           │   │   │   ├── AccessibilityNodeProviderCompatJellyBean.smali
│           │   │   │   ├── AccessibilityNodeProviderCompatKitKat$1.smali
│           │   │   │   ├── AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge.smali
│           │   │   │   ├── AccessibilityNodeProviderCompatKitKat.smali
│           │   │   │   ├── AccessibilityNodeProviderCompat.smali
│           │   │   │   ├── AccessibilityRecordCompat$AccessibilityRecordIcsImpl.smali
│           │   │   │   ├── AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl.smali
│           │   │   │   ├── AccessibilityRecordCompat$AccessibilityRecordImpl.smali
│           │   │   │   ├── AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl.smali
│           │   │   │   ├── AccessibilityRecordCompat$AccessibilityRecordStubImpl.smali
│           │   │   │   ├── AccessibilityRecordCompatIcsMr1.smali
│           │   │   │   ├── AccessibilityRecordCompatIcs.smali
│           │   │   │   ├── AccessibilityRecordCompatJellyBean.smali
│           │   │   │   ├── AccessibilityRecordCompat.smali
│           │   │   │   ├── AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl.smali
│           │   │   │   ├── AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl.smali
│           │   │   │   ├── AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl.smali
│           │   │   │   ├── AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl.smali
│           │   │   │   ├── AccessibilityWindowInfoCompatApi21.smali
│           │   │   │   ├── AccessibilityWindowInfoCompatApi24.smali
│           │   │   │   └── AccessibilityWindowInfoCompat.smali
│           │   │   ├── AccessibilityDelegateCompat$AccessibilityDelegateApi16Impl$1.smali
│           │   │   ├── AccessibilityDelegateCompat$AccessibilityDelegateApi16Impl.smali
│           │   │   ├── AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1.smali
│           │   │   ├── AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl.smali
│           │   │   ├── AccessibilityDelegateCompat.smali
│           │   │   ├── ActionProvider$SubUiVisibilityListener.smali
│           │   │   ├── ActionProvider$VisibilityListener.smali
│           │   │   ├── ActionProvider.smali
│           │   │   ├── animation
│           │   │   │   ├── FastOutLinearInInterpolator.smali
│           │   │   │   ├── FastOutSlowInInterpolator.smali
│           │   │   │   ├── LinearOutSlowInInterpolator.smali
│           │   │   │   ├── LookupTableInterpolator.smali
│           │   │   │   ├── PathInterpolatorApi14.smali
│           │   │   │   └── PathInterpolatorCompat.smali
│           │   │   ├── AsyncLayoutInflater$1.smali
│           │   │   ├── AsyncLayoutInflater$BasicInflater.smali
│           │   │   ├── AsyncLayoutInflater$InflateRequest.smali
│           │   │   ├── AsyncLayoutInflater$InflateThread.smali
│           │   │   ├── AsyncLayoutInflater$OnInflateFinishedListener.smali
│           │   │   ├── AsyncLayoutInflater.smali
│           │   │   ├── GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler.smali
│           │   │   ├── GestureDetectorCompat$GestureDetectorCompatImplBase.smali
│           │   │   ├── GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2.smali
│           │   │   ├── GestureDetectorCompat$GestureDetectorCompatImpl.smali
│           │   │   ├── GestureDetectorCompat.smali
│           │   │   ├── GravityCompat$GravityCompatImplBase.smali
│           │   │   ├── GravityCompat$GravityCompatImplJellybeanMr1.smali
│           │   │   ├── GravityCompat$GravityCompatImpl.smali
│           │   │   ├── GravityCompatJellybeanMr1.smali
│           │   │   ├── GravityCompat.smali
│           │   │   ├── InputDeviceCompat.smali
│           │   │   ├── KeyEventCompat.smali
│           │   │   ├── LayoutInflaterCompat$Factory2Wrapper.smali
│           │   │   ├── LayoutInflaterCompat$LayoutInflaterCompatApi21Impl.smali
│           │   │   ├── LayoutInflaterCompat$LayoutInflaterCompatBaseImpl.smali
│           │   │   ├── LayoutInflaterCompat.smali
│           │   │   ├── LayoutInflaterFactory.smali
│           │   │   ├── MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase.smali
│           │   │   ├── MarginLayoutParamsCompat$MarginLayoutParamsCompatImplJbMr1.smali
│           │   │   ├── MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl.smali
│           │   │   ├── MarginLayoutParamsCompatJellybeanMr1.smali
│           │   │   ├── MarginLayoutParamsCompat.smali
│           │   │   ├── MenuCompat.smali
│           │   │   ├── MenuItemCompat$1.smali
│           │   │   ├── MenuItemCompat$MenuItemCompatApi26Impl.smali
│           │   │   ├── MenuItemCompat$MenuItemCompatBaseImpl.smali
│           │   │   ├── MenuItemCompat$MenuVersionImpl.smali
│           │   │   ├── MenuItemCompat$OnActionExpandListener.smali
│           │   │   ├── MenuItemCompat.smali
│           │   │   ├── MotionEventCompat.smali
│           │   │   ├── NestedScrollingChildHelper.smali
│           │   │   ├── NestedScrollingChild.smali
│           │   │   ├── NestedScrollingParentHelper.smali
│           │   │   ├── NestedScrollingParent.smali
│           │   │   ├── OnApplyWindowInsetsListener.smali
│           │   │   ├── PagerAdapter.smali
│           │   │   ├── PagerTabStrip$1.smali
│           │   │   ├── PagerTabStrip$2.smali
│           │   │   ├── PagerTabStrip.smali
│           │   │   ├── PagerTitleStrip$PageListener.smali
│           │   │   ├── PagerTitleStrip$PagerTitleStripImplBase.smali
│           │   │   ├── PagerTitleStrip$PagerTitleStripImplIcs.smali
│           │   │   ├── PagerTitleStrip$PagerTitleStripImpl.smali
│           │   │   ├── PagerTitleStripIcs$SingleLineAllCapsTransform.smali
│           │   │   ├── PagerTitleStripIcs.smali
│           │   │   ├── PagerTitleStrip.smali
│           │   │   ├── PointerIconCompat$Api24PointerIconCompatImpl.smali
│           │   │   ├── PointerIconCompat$BasePointerIconCompatImpl.smali
│           │   │   ├── PointerIconCompat$PointerIconCompatImpl.smali
│           │   │   ├── PointerIconCompatApi24.smali
│           │   │   ├── PointerIconCompat.smali
│           │   │   ├── ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl.smali
│           │   │   ├── ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl.smali
│           │   │   ├── ScaleGestureDetectorCompat$ScaleGestureDetectorImpl.smali
│           │   │   ├── ScaleGestureDetectorCompatKitKat.smali
│           │   │   ├── ScaleGestureDetectorCompat.smali
│           │   │   ├── ScrollingView.smali
│           │   │   ├── TintableBackgroundView.smali
│           │   │   ├── VelocityTrackerCompat.smali
│           │   │   ├── ViewCompat$FocusDirection.smali
│           │   │   ├── ViewCompat$FocusRealDirection.smali
│           │   │   ├── ViewCompat$FocusRelativeDirection.smali
│           │   │   ├── ViewCompat$ScrollIndicators.smali
│           │   │   ├── ViewCompat$ViewCompatApi15Impl.smali
│           │   │   ├── ViewCompat$ViewCompatApi16Impl.smali
│           │   │   ├── ViewCompat$ViewCompatApi17Impl.smali
│           │   │   ├── ViewCompat$ViewCompatApi18Impl.smali
│           │   │   ├── ViewCompat$ViewCompatApi19Impl.smali
│           │   │   ├── ViewCompat$ViewCompatApi21Impl$1.smali
│           │   │   ├── ViewCompat$ViewCompatApi21Impl.smali
│           │   │   ├── ViewCompat$ViewCompatApi23Impl.smali
│           │   │   ├── ViewCompat$ViewCompatApi24Impl.smali
│           │   │   ├── ViewCompat$ViewCompatApi26Impl.smali
│           │   │   ├── ViewCompat$ViewCompatBaseImpl.smali
│           │   │   ├── ViewCompatICS$TooltipHandler$1.smali
│           │   │   ├── ViewCompatICS$TooltipHandler.smali
│           │   │   ├── ViewCompatICS.smali
│           │   │   ├── ViewCompat.smali
│           │   │   ├── ViewConfigurationCompat$BaseViewConfigurationVersionImpl.smali
│           │   │   ├── ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl.smali
│           │   │   ├── ViewConfigurationCompat$IcsViewConfigurationVersionImpl.smali
│           │   │   ├── ViewConfigurationCompat$ViewConfigurationVersionImpl.smali
│           │   │   ├── ViewConfigurationCompatICS.smali
│           │   │   ├── ViewConfigurationCompat.smali
│           │   │   ├── ViewGroupCompat$ViewGroupCompatApi18Impl.smali
│           │   │   ├── ViewGroupCompat$ViewGroupCompatApi21Impl.smali
│           │   │   ├── ViewGroupCompat$ViewGroupCompatBaseImpl.smali
│           │   │   ├── ViewGroupCompat.smali
│           │   │   ├── ViewPager$1.smali
│           │   │   ├── ViewPager$2.smali
│           │   │   ├── ViewPager$3.smali
│           │   │   ├── ViewPager$4.smali
│           │   │   ├── ViewPager$DecorView.smali
│           │   │   ├── ViewPager$ItemInfo.smali
│           │   │   ├── ViewPager$LayoutParams.smali
│           │   │   ├── ViewPager$MyAccessibilityDelegate.smali
│           │   │   ├── ViewPager$OnAdapterChangeListener.smali
│           │   │   ├── ViewPager$OnPageChangeListener.smali
│           │   │   ├── ViewPager$PagerObserver.smali
│           │   │   ├── ViewPager$PageTransformer.smali
│           │   │   ├── ViewPager$SavedState$1.smali
│           │   │   ├── ViewPager$SavedState.smali
│           │   │   ├── ViewPager$SimpleOnPageChangeListener.smali
│           │   │   ├── ViewPager$ViewPositionComparator.smali
│           │   │   ├── ViewPager.smali
│           │   │   ├── ViewParentCompat$ViewParentCompatApi19Impl.smali
│           │   │   ├── ViewParentCompat$ViewParentCompatApi21Impl.smali
│           │   │   ├── ViewParentCompat$ViewParentCompatBaseImpl.smali
│           │   │   ├── ViewParentCompat.smali
│           │   │   ├── ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatApi16Impl.smali
│           │   │   ├── ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatApi18Impl.smali
│           │   │   ├── ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatApi19Impl.smali
│           │   │   ├── ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatApi21Impl.smali
│           │   │   ├── ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener.smali
│           │   │   ├── ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl.smali
│           │   │   ├── ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl.smali
│           │   │   ├── ViewPropertyAnimatorCompatICS$1.smali
│           │   │   ├── ViewPropertyAnimatorCompatICS.smali
│           │   │   ├── ViewPropertyAnimatorCompatJB$1.smali
│           │   │   ├── ViewPropertyAnimatorCompatJB.smali
│           │   │   ├── ViewPropertyAnimatorCompatKK$1.smali
│           │   │   ├── ViewPropertyAnimatorCompatKK.smali
│           │   │   ├── ViewPropertyAnimatorCompat.smali
│           │   │   ├── ViewPropertyAnimatorListenerAdapter.smali
│           │   │   ├── ViewPropertyAnimatorListener.smali
│           │   │   ├── ViewPropertyAnimatorUpdateListener.smali
│           │   │   ├── WindowCompat.smali
│           │   │   ├── WindowInsetsCompat$WindowInsetsCompatApi20Impl.smali
│           │   │   ├── WindowInsetsCompat$WindowInsetsCompatApi21Impl.smali
│           │   │   ├── WindowInsetsCompat$WindowInsetsCompatBaseImpl.smali
│           │   │   ├── WindowInsetsCompat$WindowInsetsCompatImpl.smali
│           │   │   ├── WindowInsetsCompatApi20.smali
│           │   │   ├── WindowInsetsCompatApi21.smali
│           │   │   └── WindowInsetsCompat.smali
│           │   └── widget
│           │       ├── AutoScrollHelper$ClampedScroller.smali
│           │       ├── AutoScrollHelper$ScrollAnimationRunnable.smali
│           │       ├── AutoScrollHelper.smali
│           │       ├── CircleImageView$OvalShadow.smali
│           │       ├── CircleImageView.smali
│           │       ├── CompoundButtonCompat$CompoundButtonCompatApi21Impl.smali
│           │       ├── CompoundButtonCompat$CompoundButtonCompatApi23Impl.smali
│           │       ├── CompoundButtonCompat$CompoundButtonCompatBaseImpl.smali
│           │       ├── CompoundButtonCompat.smali
│           │       ├── ContentLoadingProgressBar$1.smali
│           │       ├── ContentLoadingProgressBar$2.smali
│           │       ├── ContentLoadingProgressBar.smali
│           │       ├── CursorAdapter$ChangeObserver.smali
│           │       ├── CursorAdapter$MyDataSetObserver.smali
│           │       ├── CursorAdapter.smali
│           │       ├── CursorFilter$CursorFilterClient.smali
│           │       ├── CursorFilter.smali
│           │       ├── DrawerLayout$AccessibilityDelegate.smali
│           │       ├── DrawerLayout$ChildAccessibilityDelegate.smali
│           │       ├── DrawerLayout$DrawerLayoutCompatImplApi21.smali
│           │       ├── DrawerLayout$DrawerLayoutCompatImplBase.smali
│           │       ├── DrawerLayout$DrawerLayoutCompatImpl.smali
│           │       ├── DrawerLayout$DrawerListener.smali
│           │       ├── DrawerLayout$LayoutParams.smali
│           │       ├── DrawerLayout$SavedState$1.smali
│           │       ├── DrawerLayout$SavedState.smali
│           │       ├── DrawerLayout$SimpleDrawerListener.smali
│           │       ├── DrawerLayout$ViewDragCallback$1.smali
│           │       ├── DrawerLayout$ViewDragCallback.smali
│           │       ├── DrawerLayoutCompatApi21$InsetsListener.smali
│           │       ├── DrawerLayoutCompatApi21.smali
│           │       ├── DrawerLayoutImpl.smali
│           │       ├── DrawerLayout.smali
│           │       ├── EdgeEffectCompat$EdgeEffectApi21Impl.smali
│           │       ├── EdgeEffectCompat$EdgeEffectBaseImpl.smali
│           │       ├── EdgeEffectCompat.smali
│           │       ├── ExploreByTouchHelper$1.smali
│           │       ├── ExploreByTouchHelper$2.smali
│           │       ├── ExploreByTouchHelper$MyNodeProvider.smali
│           │       ├── ExploreByTouchHelper.smali
│           │       ├── FocusStrategy$BoundsAdapter.smali
│           │       ├── FocusStrategy$CollectionAdapter.smali
│           │       ├── FocusStrategy$SequentialComparator.smali
│           │       ├── FocusStrategy.smali
│           │       ├── ListPopupWindowCompat$BaseListPopupWindowImpl.smali
│           │       ├── ListPopupWindowCompat$KitKatListPopupWindowImpl.smali
│           │       ├── ListPopupWindowCompat$ListPopupWindowImpl.smali
│           │       ├── ListPopupWindowCompatKitKat.smali
│           │       ├── ListPopupWindowCompat.smali
│           │       ├── ListViewAutoScrollHelper.smali
│           │       ├── ListViewCompat.smali
│           │       ├── MaterialProgressDrawable$1.smali
│           │       ├── MaterialProgressDrawable$2.smali
│           │       ├── MaterialProgressDrawable$3.smali
│           │       ├── MaterialProgressDrawable$ProgressDrawableSize.smali
│           │       ├── MaterialProgressDrawable$Ring.smali
│           │       ├── MaterialProgressDrawable.smali
│           │       ├── NestedScrollView$AccessibilityDelegate.smali
│           │       ├── NestedScrollView$OnScrollChangeListener.smali
│           │       ├── NestedScrollView$SavedState$1.smali
│           │       ├── NestedScrollView$SavedState.smali
│           │       ├── NestedScrollView.smali
│           │       ├── PopupMenuCompat$BasePopupMenuImpl.smali
│           │       ├── PopupMenuCompat$KitKatPopupMenuImpl.smali
│           │       ├── PopupMenuCompat$PopupMenuImpl.smali
│           │       ├── PopupMenuCompatKitKat.smali
│           │       ├── PopupMenuCompat.smali
│           │       ├── PopupWindowCompat$Api21PopupWindowImpl.smali
│           │       ├── PopupWindowCompat$Api23PopupWindowImpl.smali
│           │       ├── PopupWindowCompat$BasePopupWindowImpl.smali
│           │       ├── PopupWindowCompat$KitKatPopupWindowImpl.smali
│           │       ├── PopupWindowCompat$PopupWindowImpl.smali
│           │       ├── PopupWindowCompatApi21.smali
│           │       ├── PopupWindowCompatApi23.smali
│           │       ├── PopupWindowCompatKitKat.smali
│           │       ├── PopupWindowCompat.smali
│           │       ├── ResourceCursorAdapter.smali
│           │       ├── ScrollerCompat.smali
│           │       ├── SearchViewCompat$1.smali
│           │       ├── SearchViewCompat$2.smali
│           │       ├── SearchViewCompat$OnCloseListenerCompat.smali
│           │       ├── SearchViewCompat$OnCloseListener.smali
│           │       ├── SearchViewCompat$OnQueryTextListenerCompat.smali
│           │       ├── SearchViewCompat$OnQueryTextListener.smali
│           │       ├── SearchViewCompat.smali
│           │       ├── SimpleCursorAdapter$CursorToStringConverter.smali
│           │       ├── SimpleCursorAdapter$ViewBinder.smali
│           │       ├── SimpleCursorAdapter.smali
│           │       ├── SlidingPaneLayout$AccessibilityDelegate.smali
│           │       ├── SlidingPaneLayout$DisableLayerRunnable.smali
│           │       ├── SlidingPaneLayout$DragHelperCallback.smali
│           │       ├── SlidingPaneLayout$LayoutParams.smali
│           │       ├── SlidingPaneLayout$PanelSlideListener.smali
│           │       ├── SlidingPaneLayout$SavedState$1.smali
│           │       ├── SlidingPaneLayout$SavedState.smali
│           │       ├── SlidingPaneLayout$SimplePanelSlideListener.smali
│           │       ├── SlidingPaneLayout$SlidingPanelLayoutImplBase.smali
│           │       ├── SlidingPaneLayout$SlidingPanelLayoutImplJBMR1.smali
│           │       ├── SlidingPaneLayout$SlidingPanelLayoutImplJB.smali
│           │       ├── SlidingPaneLayout$SlidingPanelLayoutImpl.smali
│           │       ├── SlidingPaneLayout.smali
│           │       ├── Space.smali
│           │       ├── SwipeProgressBar.smali
│           │       ├── SwipeRefreshLayout$1.smali
│           │       ├── SwipeRefreshLayout$2.smali
│           │       ├── SwipeRefreshLayout$3.smali
│           │       ├── SwipeRefreshLayout$4.smali
│           │       ├── SwipeRefreshLayout$5.smali
│           │       ├── SwipeRefreshLayout$6.smali
│           │       ├── SwipeRefreshLayout$7.smali
│           │       ├── SwipeRefreshLayout$8.smali
│           │       ├── SwipeRefreshLayout$OnChildScrollUpCallback.smali
│           │       ├── SwipeRefreshLayout$OnRefreshListener.smali
│           │       ├── SwipeRefreshLayout.smali
│           │       ├── TextViewCompat$Api23TextViewCompatImpl.smali
│           │       ├── TextViewCompat$BaseTextViewCompatImpl.smali
│           │       ├── TextViewCompat$JbMr1TextViewCompatImpl.smali
│           │       ├── TextViewCompat$JbMr2TextViewCompatImpl.smali
│           │       ├── TextViewCompat$JbTextViewCompatImpl.smali
│           │       ├── TextViewCompat$TextViewCompatImpl.smali
│           │       ├── TextViewCompatApi23.smali
│           │       ├── TextViewCompatGingerbread.smali
│           │       ├── TextViewCompatJbMr1.smali
│           │       ├── TextViewCompatJbMr2.smali
│           │       ├── TextViewCompatJb.smali
│           │       ├── TextViewCompat.smali
│           │       ├── TintableCompoundButton.smali
│           │       ├── ViewDragHelper$1.smali
│           │       ├── ViewDragHelper$2.smali
│           │       ├── ViewDragHelper$Callback.smali
│           │       └── ViewDragHelper.smali
│           └── v7
│               ├── app
│               │   ├── ActionBar$DisplayOptions.smali
│               │   ├── ActionBar$LayoutParams.smali
│               │   ├── ActionBar$NavigationMode.smali
│               │   ├── ActionBar$OnMenuVisibilityListener.smali
│               │   ├── ActionBar$OnNavigationListener.smali
│               │   ├── ActionBar$TabListener.smali
│               │   ├── ActionBar$Tab.smali
│               │   ├── ActionBarActivity.smali
│               │   ├── ActionBarDrawerToggle$1.smali
│               │   ├── ActionBarDrawerToggle$DelegateProvider.smali
│               │   ├── ActionBarDrawerToggle$Delegate.smali
│               │   ├── ActionBarDrawerToggle$DummyDelegate.smali
│               │   ├── ActionBarDrawerToggle$HoneycombDelegate.smali
│               │   ├── ActionBarDrawerToggle$IcsDelegate.smali
│               │   ├── ActionBarDrawerToggle$JellybeanMr2Delegate.smali
│               │   ├── ActionBarDrawerToggle$ToolbarCompatDelegate.smali
│               │   ├── ActionBarDrawerToggleHoneycomb$SetIndicatorInfo.smali
│               │   ├── ActionBarDrawerToggleHoneycomb.smali
│               │   ├── ActionBarDrawerToggle.smali
│               │   ├── ActionBar.smali
│               │   ├── AlertController$1.smali
│               │   ├── AlertController$2.smali
│               │   ├── AlertController$3.smali
│               │   ├── AlertController$4.smali
│               │   ├── AlertController$5.smali
│               │   ├── AlertController$AlertParams$1.smali
│               │   ├── AlertController$AlertParams$2.smali
│               │   ├── AlertController$AlertParams$3.smali
│               │   ├── AlertController$AlertParams$4.smali
│               │   ├── AlertController$AlertParams$OnPrepareListViewListener.smali
│               │   ├── AlertController$AlertParams.smali
│               │   ├── AlertController$ButtonHandler.smali
│               │   ├── AlertController$CheckedItemAdapter.smali
│               │   ├── AlertController$RecycleListView.smali
│               │   ├── AlertController.smali
│               │   ├── AlertDialog$Builder.smali
│               │   ├── AlertDialog.smali
│               │   ├── AppCompatActivity.smali
│               │   ├── AppCompatCallback.smali
│               │   ├── AppCompatDelegate$NightMode.smali
│               │   ├── AppCompatDelegateImplBase$1.smali
│               │   ├── AppCompatDelegateImplBase$ActionBarDrawableToggleImpl.smali
│               │   ├── AppCompatDelegateImplBase$AppCompatWindowCallbackBase.smali
│               │   ├── AppCompatDelegateImplBase.smali
│               │   ├── AppCompatDelegateImplN$AppCompatWindowCallbackN.smali
│               │   ├── AppCompatDelegateImplN.smali
│               │   ├── AppCompatDelegateImplV11.smali
│               │   ├── AppCompatDelegateImplV14$AppCompatWindowCallbackV14.smali
│               │   ├── AppCompatDelegateImplV14$AutoNightModeManager$1.smali
│               │   ├── AppCompatDelegateImplV14$AutoNightModeManager.smali
│               │   ├── AppCompatDelegateImplV14.smali
│               │   ├── AppCompatDelegateImplV23$AppCompatWindowCallbackV23.smali
│               │   ├── AppCompatDelegateImplV23.smali
│               │   ├── AppCompatDelegateImplV9$1.smali
│               │   ├── AppCompatDelegateImplV9$2.smali
│               │   ├── AppCompatDelegateImplV9$3.smali
│               │   ├── AppCompatDelegateImplV9$4.smali
│               │   ├── AppCompatDelegateImplV9$5$1.smali
│               │   ├── AppCompatDelegateImplV9$5.smali
│               │   ├── AppCompatDelegateImplV9$6.smali
│               │   ├── AppCompatDelegateImplV9$ActionMenuPresenterCallback.smali
│               │   ├── AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1.smali
│               │   ├── AppCompatDelegateImplV9$ActionModeCallbackWrapperV9.smali
│               │   ├── AppCompatDelegateImplV9$ListMenuDecorView.smali
│               │   ├── AppCompatDelegateImplV9$PanelFeatureState$SavedState$1.smali
│               │   ├── AppCompatDelegateImplV9$PanelFeatureState$SavedState.smali
│               │   ├── AppCompatDelegateImplV9$PanelFeatureState.smali
│               │   ├── AppCompatDelegateImplV9$PanelMenuPresenterCallback.smali
│               │   ├── AppCompatDelegateImplV9.smali
│               │   ├── AppCompatDelegate.smali
│               │   ├── AppCompatDialogFragment.smali
│               │   ├── AppCompatDialog.smali
│               │   ├── AppCompatViewInflater$DeclaredOnClickListener.smali
│               │   ├── AppCompatViewInflater.smali
│               │   ├── NavItemSelectedListener.smali
│               │   ├── NotificationCompat$1.smali
│               │   ├── NotificationCompat$Api24Extender.smali
│               │   ├── NotificationCompat$Builder.smali
│               │   ├── NotificationCompat$DecoratedCustomViewStyle.smali
│               │   ├── NotificationCompat$DecoratedMediaCustomViewStyle.smali
│               │   ├── NotificationCompat$IceCreamSandwichExtender.smali
│               │   ├── NotificationCompat$JellybeanExtender.smali
│               │   ├── NotificationCompat$LollipopExtender.smali
│               │   ├── NotificationCompat$MediaStyle.smali
│               │   ├── NotificationCompatImpl21.smali
│               │   ├── NotificationCompatImpl24.smali
│               │   ├── NotificationCompatImplBase.smali
│               │   ├── NotificationCompatImplJellybean.smali
│               │   ├── NotificationCompat.smali
│               │   ├── ResourcesFlusher.smali
│               │   ├── ToolbarActionBar$1.smali
│               │   ├── ToolbarActionBar$2.smali
│               │   ├── ToolbarActionBar$ActionMenuPresenterCallback.smali
│               │   ├── ToolbarActionBar$MenuBuilderCallback.smali
│               │   ├── ToolbarActionBar$PanelMenuPresenterCallback.smali
│               │   ├── ToolbarActionBar$ToolbarCallbackWrapper.smali
│               │   ├── ToolbarActionBar.smali
│               │   ├── TwilightCalculator.smali
│               │   ├── TwilightManager$TwilightState.smali
│               │   ├── TwilightManager.smali
│               │   ├── WindowDecorActionBar$1.smali
│               │   ├── WindowDecorActionBar$2.smali
│               │   ├── WindowDecorActionBar$3.smali
│               │   ├── WindowDecorActionBar$ActionModeImpl.smali
│               │   ├── WindowDecorActionBar$TabImpl.smali
│               │   └── WindowDecorActionBar.smali
│               ├── appcompat
│               │   ├── BuildConfig.smali
│               │   ├── R$anim.smali
│               │   ├── R$attr.smali
│               │   ├── R$bool.smali
│               │   ├── R$color.smali
│               │   ├── R$dimen.smali
│               │   ├── R$drawable.smali
│               │   ├── R$id.smali
│               │   ├── R$integer.smali
│               │   ├── R$layout.smali
│               │   ├── R$string.smali
│               │   ├── R$styleable.smali
│               │   ├── R$style.smali
│               │   └── R.smali
│               ├── content
│               │   └── res
│               │       ├── AppCompatColorStateListInflater.smali
│               │       ├── AppCompatResources$ColorStateListCacheEntry.smali
│               │       ├── AppCompatResources.smali
│               │       └── GrowingArrayUtils.smali
│               ├── graphics
│               │   └── drawable
│               │       ├── DrawableWrapper.smali
│               │       ├── DrawerArrowDrawable$ArrowDirection.smali
│               │       └── DrawerArrowDrawable.smali
│               ├── text
│               │   └── AllCapsTransformationMethod.smali
│               ├── transition
│               │   └── ActionBarTransition.smali
│               ├── view
│               │   ├── ActionBarPolicy.smali
│               │   ├── ActionMode$Callback.smali
│               │   ├── ActionMode.smali
│               │   ├── CollapsibleActionView.smali
│               │   ├── ContextThemeWrapper.smali
│               │   ├── menu
│               │   │   ├── ActionMenuItem.smali
│               │   │   ├── ActionMenuItemView$ActionMenuItemForwardingListener.smali
│               │   │   ├── ActionMenuItemView$PopupCallback.smali
│               │   │   ├── ActionMenuItemView.smali
│               │   │   ├── BaseMenuPresenter.smali
│               │   │   ├── BaseMenuWrapper.smali
│               │   │   ├── BaseWrapper.smali
│               │   │   ├── CascadingMenuPopup$1.smali
│               │   │   ├── CascadingMenuPopup$2$1.smali
│               │   │   ├── CascadingMenuPopup$2.smali
│               │   │   ├── CascadingMenuPopup$CascadingMenuInfo.smali
│               │   │   ├── CascadingMenuPopup$HorizPosition.smali
│               │   │   ├── CascadingMenuPopup.smali
│               │   │   ├── ExpandedMenuView.smali
│               │   │   ├── ListMenuItemView.smali
│               │   │   ├── ListMenuPresenter$MenuAdapter.smali
│               │   │   ├── ListMenuPresenter.smali
│               │   │   ├── MenuAdapter.smali
│               │   │   ├── MenuBuilder$Callback.smali
│               │   │   ├── MenuBuilder$ItemInvoker.smali
│               │   │   ├── MenuBuilder.smali
│               │   │   ├── MenuDialogHelper.smali
│               │   │   ├── MenuHelper.smali
│               │   │   ├── MenuItemImpl$1.smali
│               │   │   ├── MenuItemImpl.smali
│               │   │   ├── MenuItemWrapperICS$ActionProviderWrapper.smali
│               │   │   ├── MenuItemWrapperICS$CollapsibleActionViewWrapper.smali
│               │   │   ├── MenuItemWrapperICS$OnActionExpandListenerWrapper.smali
│               │   │   ├── MenuItemWrapperICS$OnMenuItemClickListenerWrapper.smali
│               │   │   ├── MenuItemWrapperICS.smali
│               │   │   ├── MenuItemWrapperJB$ActionProviderWrapperJB.smali
│               │   │   ├── MenuItemWrapperJB.smali
│               │   │   ├── MenuPopupHelper$1.smali
│               │   │   ├── MenuPopupHelper.smali
│               │   │   ├── MenuPopup.smali
│               │   │   ├── MenuPresenter$Callback.smali
│               │   │   ├── MenuPresenter.smali
│               │   │   ├── MenuView$ItemView.smali
│               │   │   ├── MenuView.smali
│               │   │   ├── MenuWrapperFactory.smali
│               │   │   ├── MenuWrapperICS.smali
│               │   │   ├── ShowableListMenu.smali
│               │   │   ├── StandardMenuPopup$1.smali
│               │   │   ├── StandardMenuPopup.smali
│               │   │   ├── SubMenuBuilder.smali
│               │   │   └── SubMenuWrapperICS.smali
│               │   ├── StandaloneActionMode.smali
│               │   ├── SupportActionModeWrapper$CallbackWrapper.smali
│               │   ├── SupportActionModeWrapper.smali
│               │   ├── SupportMenuInflater$InflatedOnMenuItemClickListener.smali
│               │   ├── SupportMenuInflater$MenuState.smali
│               │   ├── SupportMenuInflater.smali
│               │   ├── ViewPropertyAnimatorCompatSet$1.smali
│               │   ├── ViewPropertyAnimatorCompatSet.smali
│               │   └── WindowCallbackWrapper.smali
│               └── widget
│                   ├── AbsActionBarView$1.smali
│                   ├── AbsActionBarView$VisibilityAnimListener.smali
│                   ├── AbsActionBarView.smali
│                   ├── ActionBarBackgroundDrawable.smali
│                   ├── ActionBarBackgroundDrawableV21.smali
│                   ├── ActionBarContainer.smali
│                   ├── ActionBarContextView$1.smali
│                   ├── ActionBarContextView.smali
│                   ├── ActionBarOverlayLayout$1.smali
│                   ├── ActionBarOverlayLayout$2.smali
│                   ├── ActionBarOverlayLayout$3.smali
│                   ├── ActionBarOverlayLayout$ActionBarVisibilityCallback.smali
│                   ├── ActionBarOverlayLayout$LayoutParams.smali
│                   ├── ActionBarOverlayLayout.smali
│                   ├── ActionMenuPresenter$ActionButtonSubmenu.smali
│                   ├── ActionMenuPresenter$ActionMenuPopupCallback.smali
│                   ├── ActionMenuPresenter$OpenOverflowRunnable.smali
│                   ├── ActionMenuPresenter$OverflowMenuButton$1.smali
│                   ├── ActionMenuPresenter$OverflowMenuButton.smali
│                   ├── ActionMenuPresenter$OverflowPopup.smali
│                   ├── ActionMenuPresenter$PopupPresenterCallback.smali
│                   ├── ActionMenuPresenter$SavedState$1.smali
│                   ├── ActionMenuPresenter$SavedState.smali
│                   ├── ActionMenuPresenter.smali
│                   ├── ActionMenuView$ActionMenuChildView.smali
│                   ├── ActionMenuView$ActionMenuPresenterCallback.smali
│                   ├── ActionMenuView$LayoutParams.smali
│                   ├── ActionMenuView$MenuBuilderCallback.smali
│                   ├── ActionMenuView$OnMenuItemClickListener.smali
│                   ├── ActionMenuView.smali
│                   ├── ActivityChooserModel$ActivityChooserModelClient.smali
│                   ├── ActivityChooserModel$ActivityResolveInfo.smali
│                   ├── ActivityChooserModel$ActivitySorter.smali
│                   ├── ActivityChooserModel$DefaultSorter.smali
│                   ├── ActivityChooserModel$HistoricalRecord.smali
│                   ├── ActivityChooserModel$OnChooseActivityListener.smali
│                   ├── ActivityChooserModel$PersistHistoryAsyncTask.smali
│                   ├── ActivityChooserModel.smali
│                   ├── ActivityChooserView$1.smali
│                   ├── ActivityChooserView$2.smali
│                   ├── ActivityChooserView$3.smali
│                   ├── ActivityChooserView$4.smali
│                   ├── ActivityChooserView$ActivityChooserViewAdapter.smali
│                   ├── ActivityChooserView$Callbacks.smali
│                   ├── ActivityChooserView$InnerLayout.smali
│                   ├── ActivityChooserView.smali
│                   ├── AlertDialogLayout.smali
│                   ├── AppCompatAutoCompleteTextView.smali
│                   ├── AppCompatBackgroundHelper.smali
│                   ├── AppCompatButton.smali
│                   ├── AppCompatCheckBox.smali
│                   ├── AppCompatCheckedTextView.smali
│                   ├── AppCompatCompoundButtonHelper$DirectSetButtonDrawableInterface.smali
│                   ├── AppCompatCompoundButtonHelper.smali
│                   ├── AppCompatDrawableManager$AvdcInflateDelegate.smali
│                   ├── AppCompatDrawableManager$ColorFilterLruCache.smali
│                   ├── AppCompatDrawableManager$InflateDelegate.smali
│                   ├── AppCompatDrawableManager$VdcInflateDelegate.smali
│                   ├── AppCompatDrawableManager.smali
│                   ├── AppCompatEditText.smali
│                   ├── AppCompatImageButton.smali
│                   ├── AppCompatImageHelper.smali
│                   ├── AppCompatImageView.smali
│                   ├── AppCompatMultiAutoCompleteTextView.smali
│                   ├── AppCompatPopupWindow$1.smali
│                   ├── AppCompatPopupWindow.smali
│                   ├── AppCompatProgressBarHelper.smali
│                   ├── AppCompatRadioButton.smali
│                   ├── AppCompatRatingBar.smali
│                   ├── AppCompatSeekBarHelper.smali
│                   ├── AppCompatSeekBar.smali
│                   ├── AppCompatSpinner$1.smali
│                   ├── AppCompatSpinner$DropDownAdapter.smali
│                   ├── AppCompatSpinner$DropdownPopup$1.smali
│                   ├── AppCompatSpinner$DropdownPopup$2.smali
│                   ├── AppCompatSpinner$DropdownPopup$3.smali
│                   ├── AppCompatSpinner$DropdownPopup.smali
│                   ├── AppCompatSpinner.smali
│                   ├── AppCompatTextHelper.smali
│                   ├── AppCompatTextHelperV17.smali
│                   ├── AppCompatTextView.smali
│                   ├── ButtonBarLayout.smali
│                   ├── ContentFrameLayout$OnAttachListener.smali
│                   ├── ContentFrameLayout.smali
│                   ├── DecorContentParent.smali
│                   ├── DecorToolbar.smali
│                   ├── DialogTitle.smali
│                   ├── DrawableUtils.smali
│                   ├── DropDownListView.smali
│                   ├── FitWindowsFrameLayout.smali
│                   ├── FitWindowsLinearLayout.smali
│                   ├── FitWindowsViewGroup$OnFitSystemWindowsListener.smali
│                   ├── FitWindowsViewGroup.smali
│                   ├── ForwardingListener$1.smali
│                   ├── ForwardingListener$2.smali
│                   ├── ForwardingListener$DisallowIntercept.smali
│                   ├── ForwardingListener$TriggerLongPress.smali
│                   ├── ForwardingListener.smali
│                   ├── LinearLayoutCompat$DividerMode.smali
│                   ├── LinearLayoutCompat$LayoutParams.smali
│                   ├── LinearLayoutCompat$OrientationMode.smali
│                   ├── LinearLayoutCompat.smali
│                   ├── ListPopupWindow$1.smali
│                   ├── ListPopupWindow$2.smali
│                   ├── ListPopupWindow$3.smali
│                   ├── ListPopupWindow$ListSelectorHider.smali
│                   ├── ListPopupWindow$PopupDataSetObserver.smali
│                   ├── ListPopupWindow$PopupScrollListener.smali
│                   ├── ListPopupWindow$PopupTouchInterceptor.smali
│                   ├── ListPopupWindow$ResizePopupRunnable.smali
│                   ├── ListPopupWindow.smali
│                   ├── ListViewCompat$GateKeeperDrawable.smali
│                   ├── ListViewCompat.smali
│                   ├── MenuItemHoverListener.smali
│                   ├── MenuPopupWindow$MenuDropDownListView.smali
│                   ├── MenuPopupWindow.smali
│                   ├── PopupMenu$1.smali
│                   ├── PopupMenu$2.smali
│                   ├── PopupMenu$3.smali
│                   ├── PopupMenu$OnDismissListener.smali
│                   ├── PopupMenu$OnMenuItemClickListener.smali
│                   ├── PopupMenu.smali
│                   ├── ResourcesWrapper.smali
│                   ├── RtlSpacingHelper.smali
│                   ├── ScrollingTabContainerView$1.smali
│                   ├── ScrollingTabContainerView$TabAdapter.smali
│                   ├── ScrollingTabContainerView$TabClickListener.smali
│                   ├── ScrollingTabContainerView$TabView.smali
│                   ├── ScrollingTabContainerView$VisibilityAnimListener.smali
│                   ├── ScrollingTabContainerView.smali
│                   ├── SearchView$10.smali
│                   ├── SearchView$11.smali
│                   ├── SearchView$12.smali
│                   ├── SearchView$1.smali
│                   ├── SearchView$2.smali
│                   ├── SearchView$3.smali
│                   ├── SearchView$4.smali
│                   ├── SearchView$5.smali
│                   ├── SearchView$6.smali
│                   ├── SearchView$7.smali
│                   ├── SearchView$8.smali
│                   ├── SearchView$9.smali
│                   ├── SearchView$AutoCompleteTextViewReflector.smali
│                   ├── SearchView$OnCloseListener.smali
│                   ├── SearchView$OnQueryTextListener.smali
│                   ├── SearchView$OnSuggestionListener.smali
│                   ├── SearchView$SavedState$1.smali
│                   ├── SearchView$SavedState.smali
│                   ├── SearchView$SearchAutoComplete.smali
│                   ├── SearchView$UpdatableTouchDelegate.smali
│                   ├── SearchView.smali
│                   ├── ShareActionProvider$OnShareTargetSelectedListener.smali
│                   ├── ShareActionProvider$ShareActivityChooserModelPolicy.smali
│                   ├── ShareActionProvider$ShareMenuItemOnMenuItemClickListener.smali
│                   ├── ShareActionProvider.smali
│                   ├── SuggestionsAdapter$ChildViewCache.smali
│                   ├── SuggestionsAdapter.smali
│                   ├── SwitchCompat$1.smali
│                   ├── SwitchCompat.smali
│                   ├── ThemedSpinnerAdapter$Helper.smali
│                   ├── ThemedSpinnerAdapter.smali
│                   ├── ThemeUtils.smali
│                   ├── TintContextWrapper.smali
│                   ├── TintInfo.smali
│                   ├── TintResources.smali
│                   ├── TintTypedArray.smali
│                   ├── Toolbar$1.smali
│                   ├── Toolbar$2.smali
│                   ├── Toolbar$3.smali
│                   ├── Toolbar$ExpandedActionViewMenuPresenter.smali
│                   ├── Toolbar$LayoutParams.smali
│                   ├── Toolbar$OnMenuItemClickListener.smali
│                   ├── Toolbar$SavedState$1.smali
│                   ├── Toolbar$SavedState.smali
│                   ├── Toolbar.smali
│                   ├── ToolbarWidgetWrapper$1.smali
│                   ├── ToolbarWidgetWrapper$2.smali
│                   ├── ToolbarWidgetWrapper.smali
│                   ├── VectorEnabledTintResources.smali
│                   ├── ViewStubCompat$OnInflateListener.smali
│                   ├── ViewStubCompat.smali
│                   └── ViewUtils.smali
├── README.md
├── scripts
│   ├── createDB.sql
│   └── handler.php
└── src
    ├── metadata
    │   ├── __init__.py
    │   └── metadata.py
    ├── payloads
    │   ├── __init__.py
    │   ├── logger.py
    │   ├── payload.py
    │   └── spyware.py
    ├── reverse_engineer
    │   ├── __init__.py
    │   └── reverse_engineer.py
    ├── sci.py
    └── utils
        ├── config.py
        ├── file_operation.py
        ├── __init__.py
        ├── logging.json
        ├── process_info.py
        └── register_operation.py

68 directories, 1610 files
======================: README CONTENT :======================
# Smali Code Injector (SCI)

[![Language](https://img.shields.io/badge/Lang-Java-blue.svg)](https://java.com)
[![Language](https://img.shields.io/badge/Lang-PHP-blue.svg)](https://www.php.net)
[![Language](https://img.shields.io/badge/Lang-Python-blue.svg)](https://www.python.org)
![Language](https://img.shields.io/badge/Lang-Smali-blue.svg)
[![License](https://img.shields.io/badge/License-Apache%202.0-red.svg)](https://opensource.org/licenses/Apache-2.0)

## Automate assembly code (`smali`) injection within `Android` applications.

The initial ambition of this project was to automate stack trace injections within `Android` applications in order to facilitate my master thesis work. Being able to log and display applications' runtime method calls along with their returned value greatly helps in reverse engineering complex applications by providing an insight into their logic and workflow.

Then, new features and payloads were progressively added in an attempt to create a framework fully capable of injecting any type of assembly code. Users familiar with `Android` development can easily implement compatible payloads. SCI is in charge of automating low level operation such as registers allocation, dependancie, type, etc.

_Tampering `Android` applications has never been that easy!_

Further information about `Android` reverse engineering can be found at:

- http://www.n00blinuxhacker.com/android-pentesting-reverse-engineering-android-app.html

### Automation for a simpler world...

Code injections are performed at the assembly level (`smali` files) making the differenciation process between legit and modified applications complicated and time consuming - it would require considerable forensic work such as network, permissions, signature and code analysis -.

A high level overview of the steps involved during code injection is:

1. Disassembling the application.
2. Collecting relevant information about the application.
   - Classes name.
   - Methods name.
   - Registers number and type.
   - etc.
3. Editing the AndroidManifest.xml to add permissions, services and broadcastReceivers (depending on the payload requirements).
4. Injecting and tweaking up the selected payload within the targeted method(s). Some `Android` libraries are also injected in order to defeat obfuscation.
5. Reassembling and signing the app with a valid self-signed certificate.

## Usage

- To list the available options:

  ```bash
  python3 sci.py -h

  -a APP, --app APP  	Android application to trojanize

  positional arguments:
      search          search command - identifies the main activity
      payload         payload command
  ```

- To list `search` options:

  ```bash
  python3 sci.py -a APP search -h

  -a APP, --app APP   Android application to trojanize
  ```

- To list `payload` options:

  ```bash
  python3 sci.py -a APP payload -h

  -a APP, --app APP   Android application to trojanize
  -d DESTINATION, --dest DESTINATION
                      the destination file or directoy for injection
  -k KEYWORDS, --keywords KEYWORDS
                      keywords (separated by ',') for injection filtering

  positional arguments:
      logger          logger command
      spyware         spyware command
  ```

  - To list `logger` options:

    ```bash
    python3 sci.py -a APP [-d DESTINATION] [-k KEYWORDS] logger -h

    -a APP, --app APP   Android application to trojanize
    -d DESTINATION, --dest DESTINATION
                        the destination file or directoy for injection
    -k KEYWORDS, --keywords KEYWORDS
                        keywords (separated by ',') for injection filtering
    ```

    Launch the `Android` debugger `adb` using the following command to view application's runtime method calls:

    ```bash
    adb logcat | grep "::trace"
    ```

  - To list `spyware` options:

    ```bash
    python3 sci.py -a APP payload [-d DESTINATION] [-k KEYWORDS] spyware -h

    -a APP, --app APP   Android application to trojanize
    -d DESTINATION, --dest DESTINATION
                        the destination file or directoy for injection
    -k KEYWORDS, --keywords KEYWORDS
                        keywords (separated by ',') for injection filtering
    -ppg PROPAGATE, --propagate PROPAGATE
                        spoofed SMS to send for the malware propagation
    -rh RHOST, --rhost RHOST
                        attacker's host/ip for stolen data transmission, e.g.
                        http://192.168.0.24/handler.php
    ```

    > [!IMPORTANT] 
    > For optimal results, inject `Spyware` on the `onCreate()` method of the application main activity.

    Server-side scripts used to insert and store the stolen data sent into an attacker-controlled `MySQL` database are available under [scripts](https://github.com/aress31/sci/tree/master/scripts).

    To enable `spyware` debugging mode set `DEV_MODE` to `true` in [payloads\smali\spyware](https://github.com/aress31/sci/blob/master/payloads/smali/spyware/Spyware.smali) at line 7. Then launch the `Android` debugger `adb` using the following command:

    ```bash
    adb logcat | grep "::trace"
    ```

## Roadmap

- [ ] Implement new payloads (e.g. `reverse shell`).
- [ ] Source code optimisation.

## Project Information

This framework was developed in the context of my [master thesis work](https://www.slideshare.net/AlexandreTeyar/security-in-mobile-banking-apps-154409860) in July 2015 and rewritten in 2017.

## Sponsor 💖

If you want to support this project and appreciate the time invested in developping, maintening and extending it; consider donating toward my next cup of coffee. ☕

It is easy, all you got to do is press the `Sponsor` button at the top of this page or alternatively [click this link](https://github.com/sponsors/aress31). 💸

## Reporting Issues

Found a bug? I would love to squash it! 🐛

Please report all issues on the GitHub [issues tracker](https://github.com/aress31/sci/issues).

## Contributing

You would like to contribute to better this project? 🤩

Please submit all `PRs` on the GitHub [pull requests tracker](https://github.com/aress31/sci/pulls).

## License

See [LICENSE](LICENSE).
====================== GIT HISTORY: ======================
f747f31 HEAD@{0}: clone: from https://github.com/aress31/sci
commit f747f31c5487e425990e96564ced8a72baca63c5
Author: Alexandre Teyar <11601622+aress31@users.noreply.github.com>
Date:   Sun Oct 16 00:28:36 2022 +0100

    Update README.md

commit 7a39eb94a57386926838c8f3ee2ef44790bdfe58
Author: Alexandre Teyar <11601622+aress31@users.noreply.github.com>
Date:   Sun Oct 16 00:27:43 2022 +0100

    Update README.md

commit ac575714efb6d02fe2b0dbbb1e3229c5c62d5216
Author: Alexandre Teyar <11601622+aress31@users.noreply.github.com>
Date:   Sun Oct 16 00:02:39 2022 +0100

    Delete images directory

commit 14f7b221c106ed9132fb5848ba4672273de9aaba
Author: Alexandre Teyar <11601622+aress31@users.noreply.github.com>
Date:   Fri Nov 22 08:16:04 2019 +0000

    Create FUNDING.yml

commit b819aa26f2531b0b4ce5d6e0d58a70999ab80408
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 25 23:37:07 2018 +0000

    Delete NOTICE

commit 9036ae9dc6eacfa1ab177fdbb3430000387a8037
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 11 11:56:48 2018 +0000

    Update README.md

commit 06530a98d051bcd67cb66f89fb08119b41078c80
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 11 11:56:29 2018 +0000

    Update README.md

commit cc57113b4f3d8f94f65a95fdcfb95f0329184107
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 11 11:54:10 2018 +0000

    Update README.md

commit 4a98ed7e16a07e29ec7ec60e1030a6ec1474137c
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 11 11:43:22 2018 +0000

    Update README.md

commit 124d792761b377551da97ce13fff5eb7c386191e
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Jan 11 11:35:43 2018 +0000

    Update README.md

commit 4c8b23c8e55562e9b466e512531140efada63194
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 13:37:26 2017 +0100

    Update README.md
    
    correct licences section

commit f21ffbe1033094215704f58eeab6477362b80645
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:31:30 2017 +0100

    Update README.md

commit 4236788c440e47ba2b4f0a79a856c5ad9cbdea61
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:25:33 2017 +0100

    Update README.md
    
    Correct the licenses section

commit 1612d80ab8ac318e2b98688c56dd09d6aa79edce
Merge: 5f49180 5ad5c8c
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:20:05 2017 +0100

    Merge pull request #1 from AresS31/dev
    
    Dev

commit 5ad5c8c81b553b631023dbd09cf831111b724a84
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:17:28 2017 +0100

    update README.md

commit 4aa1070cf77eba7a3ff0585d076a1f1e988c04fd
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:12:36 2017 +0100

    Set debug mode to false

commit 44f28ce33291b6d5a80bd00f270e2033928dd301
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Aug 11 10:09:04 2017 +0100

    update README.md

commit 23c40a44fc8ed615931bc73e44e071f26ae61bf4
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Aug 10 16:49:15 2017 +0100

    spyware refactor

commit c9bb1d00102a192a6a9c38a1d0fa7cae2db633aa
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Aug 10 16:46:31 2017 +0100

    server-side scripts refactor

commit b15804eaee27e3684648d612a3aea3050c5308ab
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Thu Aug 10 11:59:11 2017 +0100

    client-side refactoring

commit ae0cb76426c9edf9101b9fd278fa933badb22b31
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Wed Aug 2 17:21:56 2017 +0100

    refactoring

commit 952a4e274ba955d964b9d223638680e95f64a9ca
Author: AresS31 <alexandre.teyar@gmail.com>
Date:   Wed Aug 2 00:22:36 2017 +0100

    further refactor

commit 3b0e7ee1117467d512db8428cd4c5fa8fdab8921
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Tue Aug 1 17:18:17 2017 +0100

    further further refactor

commit 76cf35319edf77b5892413330fe0596c2e97292e
Author: AresS31 <alexandre.teyar@gmail.com>
Date:   Tue Aug 1 00:31:03 2017 +0100

    further code refactor

commit a6fe3e96f73168fbdbec0627b0296a9b86e08bfa
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Jul 31 17:26:27 2017 +0100

    further refactoring

commit 3667d93e5eaf65a0813e471aaafab9591d4d975d
Author: AresS31 <alexandre.teyar@gmail.com>
Date:   Sun Jul 30 20:56:22 2017 +0100

    refactor

commit dc5b7224539e33596428ae827656ed639228bf95
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Jul 28 17:26:59 2017 +0100

    Init refactor

commit 5f49180ce6dbd896f71ad5866762b55e5f2d2496
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Jan 20 10:20:46 2017 +0000

    typo

commit 6eb3f7dc59e6542955fb2e96654fecad4ee0a022
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Jan 20 13:49:12 2017 +0000

    typo

commit 4374ff5da9d0f5b01c71e04874803f8461c85033
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 17:06:34 2016 +0100

    Update README.md

commit e20c765ba82b2986c5f0624865743fc6bb750ede
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 17:05:36 2016 +0100

    Syntax

commit c77fc9cd89b80ba015ecf6efb3fbf44547589a74
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 17:03:04 2016 +0100

    Update README.md

commit 8bb0bc7d07e359352a8b965907f709d1d8d04f14
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 17:00:38 2016 +0100

    Update README.md

commit 97bec6cd9d060771344038f887c4ef6c5a290813
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 17:00:05 2016 +0100

    Update README.md

commit 591617d5fd756a8a1dda376e4afc8c98c4a1cc09
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 16:56:21 2016 +0100

    Update README.md

commit 088e2401d89b5e403fa57fcf873efb9878194601
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 16:54:55 2016 +0100

    Update README.md

commit 3a3faf219341383fa5a46e6a16a88514c4c5fa8f
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 16:53:49 2016 +0100

    Update README.md

commit 83181260ac36f0f2e3ef66cc7394f35d41f856be
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 16:48:21 2016 +0100

    Typo

commit 11cb0f9329aa9ed38dc2fd0ac4be6592593bf85a
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Mon Sep 5 16:47:06 2016 +0100

    Update

commit 2a488de22fbcd4d524b831ee53b676e46049687c
Author: Alexandre Teyar <alexandre.teyar@gmail.com>
Date:   Fri Sep 2 17:06:21 2016 +0100

    Initial commit
