/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_freep.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ifran <ifran@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/11 17:17:40 by ifran             #+#    #+#             */
/*   Updated: 2019/09/24 12:28:17 by ifran            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void		ft_freep(char **str, int max)
{
	int i;

	i = 0;
	while (i < max)
	{
		free(str[i]);
		str[i] = NULL;
		++i;
	}
	free(str);
	str = NULL;
}
