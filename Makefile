SUBDIRS = milestone_21 milestone_22 droid_21 droid_22 droidx_21 droidx_22 samsunggalaxybeam_21 defy_21 flipout_21 archos_22 samsunggalaxya_22
.PHONY: $(SUBDIRS)

all:	$(SUBDIRS)

milestone_21:
	cd milestone_21 && make

milestone_22:
	cd milestone_22 && make

droid_21:
	cd droid_21 && make

droid_22:
	cd droid_22 && make

droidx_21:
	cd droidx_21 && make

droidx_22:
	cd droidx_22 && make

samsunggalaxybeam_21:
	cd samsunggalaxybeam_21 && make

defy_21:
	cd defy_21 && make

flipout_21:
	cd flipout_21 && make

archos_22::
	cd archos_22 && make

samsunggalaxya_22:
	cd samsunggalaxya_22 && make

clean_milestone_21:
	cd milestone_21 && make clean

clean_milestone_22:
	cd milestone_22 && make clean

clean_droid_21:
	cd droid_21 && make clean

clean_droid_22:
	cd droid_22 && make clean

clean_droidx_21:
	cd droidx_21 && make clean

clean_droidx_22:
	cd droidx_22 && make clean

clean_samsunggalaxybeam_21:
	cd samsunggalaxybeam_21 && make clean

clean_defy_21:
	cd defy_21 && make clean

clean_flipout_21:
	cd flipout_21 && make clean

clean_archos_22:
	cd archos_22 && make clean

clean_samsunggalaxya_22:
	cd samsunggalaxya_22 && make clean

clean:	clean_milestone_21 clean_milestone_22 clean_droid_21 clean_droid_22 clean_droidx_21 clean_droidx_22 clean_samsunggalaxybeam_21 clean_defy_21 clean_flipout_21 clean_archos_22 clean_samsunggalaxya_22
	rm -f *~

dist:
	tar cvfz ../milestone-overclock-module-1.4.8.tar.gz ../overclock/
