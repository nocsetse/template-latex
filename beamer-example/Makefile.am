# SPDX-FileCopyrightText: 2023 DE:AD:10:C5 <thedevilsvoice@dead10c5.org>
#
# SPDX-License-Identifier: GPL-3.0-or-later

CLOCAL_AMFLAGS = -I config/m4 -I aclocal

clean:
	rm -rf _build *.egg-info
	@for trash in *.aux *.bbl *.blg *.lof *.log *.lot *.out *.pdf *.synctex.gz *.toc ; do \
		if [ -f "$$trash" ]; then \
			rm -rf $$trash ; \
		fi ; \
	done

slides:
	latexmk -pdf -synctex=1 -shell-escape beamer-example